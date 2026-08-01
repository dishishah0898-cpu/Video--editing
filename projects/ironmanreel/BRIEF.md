---
workflow: general-video
flow: automation
storyboard: no
message: "A real Ironman training day, cut like a race broadcast"
destination: instagram-reels
aspect: 1080x1920
language: en
length: 24s
angle: montage
---

## Intent

An aesthetic recut of an existing 33s phone montage from one training day, for
the athlete's own Instagram page. She asked for smooth transitions, motion
graphics, and an Ironman logo. The feel is disciplined and premium — a race
broadcast's restraint (chapter marks, a status chip, a progress rail) wrapped
around footage that is honestly just a woman training hard in a gym.

## Assets

- `base.mp4` — the graded, re-cut plate built from her source montage; the only footage layer.
- `assets/fonts/` — Anton (display), Barlow Condensed (labels), Archivo (numerals), bundled for deterministic render.

## Customizations

- Six source shots re-cut and cross-dissolved: arrival, barbell squats, swim, medicine-ball lunges, treadmill, cooldown.
- HDR (HLG / bt2020, Dolby Vision profile 8) tone-mapped to Rec.709 in ffmpeg — the realtime treatment path is SDR-only and must not process HLG.
- The swim source is a 16:9 letterbox inside the vertical frame. Rebuilt as a sharp 1080x606 plate on a designed charcoal panel, with red hairlines pinned to the plate edges so it reads as intentional.
- Chapter marks per discipline: 01 Strength, 02 Swim, 03 Core, 04 Run.
- Slow continuous camera push/pull on the footage wrapper; scale is continuous across every cut, and holds exactly 1.0 through the swim window so the hairlines stay registered to real pixels.
- `handle` and `closingLine` are composition variables so the outro can be re-pointed without editing HTML.

## Notes

- **The mark is original, not the trademarked M-Dot.** The IRONMAN M-Dot belongs to
  the World Triathlon Corporation. The badge here is a custom tri-roundel — race
  notch, swim/bike/run glyphs, the 140.6 distance — using the red/charcoal race
  palette. Swap in the official mark only if she has the rights to use it.
- **No music bed, by choice.** Not signed in to a music provider, and the local
  engine's deps are absent — but baking in a track would also risk a copyright
  claim on her account. Reels reach is better with in-app trending audio, so the
  render is silent and she adds sound in Instagram.
- **No invented statistics.** The treadmill console is legible on screen but its
  numbers were not transcribed into graphics, and no distance, pace, or heart-rate
  figure appears anywhere. Only what the footage actually shows.
