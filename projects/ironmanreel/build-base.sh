#!/usr/bin/env bash
# Build the graded, re-cut base plate for the Ironman training reel.
# HDR (HLG/bt2020) -> SDR bt709, cinematic grade, 1080x1920, cross-dissolve assembly.
set -euo pipefail

# Usage: ./build-base.sh <path-to-original-montage.mp4>
# The original is a 33.8s 1440x2560 HLG/Dolby-Vision phone montage that only
# ever existed as a chat upload, so it is not in this repo. base.mp4 is.
SRC="${1:?pass the original montage mp4}"
HERE="$(cd "$(dirname "$0")" && pwd)"
OUT="$HERE/base.mp4"
SEG="$(mktemp -d)"

# HDR HLG/bt2020 -> SDR bt709
TM="zscale=t=linear:npl=100,format=gbrpf32le,zscale=p=bt709,tonemap=hable:desat=0,zscale=t=bt709:m=bt709:r=tv,format=yuv420p"

# Cinematic grade: gentle S-curve, cool shadows / warm highlights, mild sharpen.
GRADE="curves=all='0/0 0.22/0.19 0.78/0.82 1/1',eq=contrast=1.06:saturation=1.10:brightness=0.008,colorbalance=rs=-0.030:gs=-0.008:bs=0.055:rm=0.018:bm=-0.010:rh=0.045:gh=0.012:bh=-0.038,unsharp=5:5:0.55:5:5:0.0"

# Vignette is baked here rather than left to the runtime shader: WebGL falls
# back to SwiftShader in this environment, and the software grading pass slowed
# the render to roughly two hours for an identical look.
#
# Film grain deliberately is NOT baked here. Temporal noise is incompressible --
# it took this plate from 20 MB to 92 MB, close enough to GitHub's 100 MB hard
# limit to matter. Grain is applied once in the delivery encode instead, where
# it also lands over the graphics rather than only the footage.
FINISH="vignette=angle=PI/4.6"

# ---- Full-frame segments: tone map -> grade -> 1080x1920 ----
cut() { # cut <ss> <dur> <outfile>
  ffmpeg -y -v error -ss "$1" -t "$2" -i "$SRC" \
    -vf "${TM},${GRADE},scale=1080:1920:flags=lanczos,setsar=1,fps=30" \
    -c:v libx264 -preset slow -crf 14 -pix_fmt yuv420p -an "$3"
}

cut 0.20  1.42 "$SEG/s1.mp4"   # arrival / gym-gate selfie
cut 2.30  8.00 "$SEG/s2.mp4"   # barbell back squats
cut 15.90 8.40 "$SEG/s4.mp4"   # medicine-ball lunges
cut 27.85 2.85 "$SEG/s5.mp4"   # treadmill console
cut 30.90 2.85 "$SEG/s6.mp4"   # cooldown mirror

# ---- Swim segment: source is a 16:9 letterbox (1440x808 @ y=876) inside the
# vertical frame. Rebuild it as a sharp centred plate over a blurred fill so it
# reads as a designed shot instead of black bars.
#
# The background is a designed charcoal panel, not an enlargement of the frame:
# blurring the shot itself leaves the goggles and torso readable as blobs. A
# crushed, near-black wash of the footage sits over the charcoal at low opacity
# so the panel carries the shot's ambient colour without depicting anything.
ffmpeg -y -v error -ss 11.68 -t 2.87 -i "$SRC" -f lavfi -t 2.87 -i "color=c=0x0E0F12:s=1080x1920:r=30" \
  -filter_complex "\
[0:v]${TM},crop=1440:808:0:876,${GRADE},fps=30,split=2[bg][fg];\
[bg]scale=32:18,scale=1080:1920:flags=bicubic,gblur=sigma=60,eq=saturation=0.30:brightness=-0.30[bgb];\
[1:v][bgb]blend=all_mode=normal:all_opacity=0.20,vignette=angle=PI/3.2[bgm];\
[fg]scale=1080:606:flags=lanczos[fgs];\
[bgm][fgs]overlay=x=0:y=657:format=auto,setsar=1[v]" \
  -map "[v]" -c:v libx264 -preset slow -crf 14 -pix_fmt yuv420p -an "$SEG/s3.mp4"

for f in s1 s2 s3 s4 s5 s6; do
  printf "%s  " "$f"; ffprobe -v error -select_streams v:0 -show_entries stream=width,height,nb_frames -of csv=p=0 "$SEG/$f.mp4"
done

# ---- Assemble with cross-dissolves ----
# d: 1.42 8.00 2.87 8.40 2.85 2.85   t: 0.50 0.40 0.45 0.45 0.50  -> 24.09s
ffmpeg -y -v error \
  -i "$SEG/s1.mp4" -i "$SEG/s2.mp4" -i "$SEG/s3.mp4" \
  -i "$SEG/s4.mp4" -i "$SEG/s5.mp4" -i "$SEG/s6.mp4" \
  -filter_complex "\
[0:v][1:v]xfade=transition=fade:duration=0.50:offset=0.92[a];\
[a][2:v]xfade=transition=fade:duration=0.40:offset=8.52[b];\
[b][3:v]xfade=transition=smoothleft:duration=0.45:offset=10.94[c];\
[c][4:v]xfade=transition=smoothup:duration=0.45:offset=18.89[d];\
[d][5:v]xfade=transition=fade:duration=0.50:offset=21.24,${FINISH},format=yuv420p,setsar=1[v]" \
  -map "[v]" -c:v libx264 -preset slow -crf 18 -pix_fmt yuv420p -movflags +faststart -an "$OUT"

echo "--- base.mp4 ---"
ffprobe -v error -show_entries format=duration -show_entries stream=width,height,r_frame_rate,nb_frames -of default=nw=1 "$OUT"
