# Bicycle Hero Film — Production Plan

**Subject:** Scott Speedster road bike (user-supplied photograph)
**Target style:** High-contrast monochrome subject on a perfectly flat `#FFD400` yellow field — premium studio / commercial advertising aesthetic
**Deliverable:** Cinematic vertical/landscape product film (this plan defines everything required *before* any frame is rendered)

> **Note on the reference video.** The brief refers to a reference video/link, but no reference file or URL was received on my side — only the bicycle photograph. Section 2 is therefore written as a **reverse-engineered target-style specification** built from the written brief (monochrome subject, flat `#FFD400` background, studio-commercial language). When the actual reference clip is supplied, Section 2 will be re-done as a true frame-by-frame breakdown and the rest of the plan reconciled against it. Everything else in this plan is anchored to your uploaded image and needs no reference to proceed.

---

## 1. Visual Analysis — the uploaded bicycle (source of truth)

Every downstream decision preserves what is observed here. This is the reference the final render is graded against in QC (Section 7).

### 1.1 Identification & geometry
- **Model:** Scott Speedster — aluminium (alloy) road frame, **compact/sloping geometry** (sloping top tube, taller head tube than a pure race frame).
- **Frame silhouette:** Traditional double-diamond road frameset; drop handlebars; 700c wheels. Wheelbase and stack/reach proportions must be locked and never restyled.
- **View captured:** Near-perpendicular **drive-side (right-side) profile**, camera roughly at hub height / very slightly below center, standard focal length (~35–50 mm equivalent) with mild natural perspective — front wheel marginally larger in frame than rear. The bike leans a few degrees, resting against the wall (top of frame away from camera, wheels toward camera).

### 1.2 Colours & materials
- **Frame:** Anthracite / graphite **grey**, semi-matte alloy finish, with a **red gradient accent** flowing along the top tube and down tube.
- **Decals:** White **"SCOTT"** wordmark on the down tube; **"SPEEDSTER"** text on the top tube; red/black graphic detailing. Small "SCOTT" mark near the head tube/fork.
- **Fork:** Grey, matching frame family.
- **Components:** Compact double crankset, drive-side rear derailleur visible, rim (caliper) brakes, black brake/shift levers.
- **Wheels:** **Mavic** (Aksium-type) — black rims with white **"MAVIC"** rim decals, bladed/paired spokes.
- **Tyres:** **Continental Gatorskin** 700c, black with tan-free black sidewall and white **"GATORSKIN / Continental"** sidewall lettering.
- **Saddle:** Scott saddle with a **yellow-green accent** flash.
- **Cockpit:** Black bar tape on drop bars.
- **Accessory:** Bottle cage + translucent water bottle (blue cap) on the down tube.

### 1.3 Lighting, camera & perspective (as shot)
- **Lighting:** Soft, diffuse **overcast daylight** — low-contrast, gentle wraparound shadows, no hard speculars. (This is the *opposite* of the target look and is what the lighting/colour plan will transform.)
- **Background (original):** Cream textured concrete wall with a horizontal seam; interlocking grey-paver + red-brick ground. This is fully replaced by the flat yellow field.
- **Angle/perspective:** Eye-level-to-low profile, minimal lens distortion, subject centered.

### 1.4 How these details are preserved throughout the video
- The uploaded photo is the **single geometric master**. The subject is isolated (background removed) and every camera move is executed as a **virtual camera over the real bike silhouette**, so proportions, part positions, and decal placement can never drift.
- A **QC overlay** (Section 7) diffs each keyframe against the source silhouette for outline, wheel size ratio, and decal position.
- No generative in-painting of components. Only **cropping, matting, camera transform, relight, and grade** are applied — nothing is invented, added, or removed.

---

## 2. Reference Style Analysis (target-style specification)

*Reverse-engineered from the written brief until the real reference clip is supplied.*

- **Colour grading:** High-contrast **monochrome** subject — the bike rendered as graphite-to-silver greyscale with deep blacks and bright metallic highlights. **Zero** colour retained in the subject except natural metallic tonal response.
- **Background:** A single, perfectly uniform **`#FFD400`** yellow field — no gradient, no vignette, no texture, no noise. Flat, poster-like, absolute.
- **Lighting direction:** Studio key from upper-front, crisp rim/edge separation, controlled falloff — the subject reads as lit in a blacked-out cyclorama, not outdoors.
- **Composition:** Subject centered or on a clean rule-of-thirds anchor with generous negative yellow space; strong figure-ground separation from the flat background.
- **Transitions:** Minimal and premium — hard cuts on motion, occasional match-cut on the wheel/orbit, and slow cross-dissolves only between hero holds. No flashy wipes.
- **Camera movement:** Slow, deliberate, weighted — push-ins, pull-outs, orbits, and macro slides with eased starts/stops. Everything feels motorized/gimbal-smooth.
- **Pacing:** Confident and unhurried — longer holds on hero frames, quicker cadence on detail montage, resolving to a locked hero card.
- **Visual language:** Luxury automotive/product-commercial grammar — the object as sculpture, monochrome subject vs. saturated brand-colour ground, macro fetishization of materials, negative space as design.

**When the real reference arrives**, this section becomes: per-shot timecodes, measured grade values (lift/gamma/gain), exact background hex sampled from frames, measured move durations and ease curves, and cut rhythm — and Sections 3–6 are reconciled to match.

---

## 3. Scene Breakdown (shot list)

Target length **~20 s**, 9 shots. Durations tuned for a premium, unhurried cadence. (16:9 or 9:16 both supported by the same choreography; framing values below assume the hero canvas.)

| # | Shot | Camera position | Camera movement | Lens style | Subject framing | Lighting | Duration | Transition out |
|---|------|-----------------|-----------------|------------|-----------------|----------|----------|----------------|
| 1 | Reveal | Front-3/4, low | Slow **push-in** from wide | 35mm, shallow-ish | Full bike, generous yellow negative space | Key upper-front, soft rim | 3.0s | Hard cut on move |
| 2 | Profile hero | Perpendicular drive-side | Locked, subtle **parallax drift** | 50mm | Full-bike centered, classic profile | Balanced key + rim | 2.5s | Match-cut to wheel |
| 3 | Front wheel macro | Close on hub/rim | **Orbit** around hub, slow | 90mm macro | Mavic decal, spokes, Gatorskin lettering | Hard rim raking spokes | 2.0s | Cut |
| 4 | Drivetrain detail | Low, on crankset | **Slider push** along down tube | 90mm macro | Crankset + derailleur | Top key, deep shadow | 2.0s | Cut |
| 5 | Decal detail | Close on down tube | **Lateral slide** across "SCOTT" | 60mm | SCOTT wordmark, red-grey gradient tonality | Grazing key for texture | 1.5s | Whip/cut |
| 6 | Saddle & cockpit | High-3/4 | **Pull-out** revealing lines | 50mm | Saddle → top tube leading lines | Soft key, gentle rim | 2.0s | Cross-dissolve |
| 7 | Full orbit hero | Mid, hub height | **180° orbit** around whole bike | 40mm | Full bike, rotating | Rotating rim tracks motion | 3.5s | Cut on motion |
| 8 | Rear wheel pull | Rear-3/4 | **Pull-out** to full | 50mm | Rear wheel → full frame | Rim highlight on rim edge | 2.0s | Slow dissolve |
| 9 | Hero lock / logo card | Perpendicular profile | **Locked**, breathing scale | 50mm | Full bike, centered, space for logo/type | Full studio key + rim | 2.5s | End |

**Total ≈ 21 s.**

---

## 4. Animation Plan

- **What moves:** The **virtual camera moves; the bicycle stays geometrically fixed** as the master silhouette (except Shot 7, a true subject/camera orbit). This guarantees zero proportion drift — the bike is never re-drawn per frame, only re-viewed.
- **Move vocabulary & where used:**
  - **Slow push-ins** — Shot 1 (reveal), Shot 9 (breathing hold).
  - **Pull-outs** — Shot 6 (cockpit), Shot 8 (rear wheel).
  - **Macro detail slides** — Shots 3, 4, 5 (hub, drivetrain, decal).
  - **Orbit shots** — Shot 3 (hub orbit), Shot 7 (full 180° hero orbit).
  - **Hero shots** — Shots 2 and 9 (locked profile with subtle parallax/scale "breathing").
- **Smoothness / cinematics:** Every move uses eased in/out curves (GSAP `power2`/`power3.inOut`, ~0.2–0.4 s ramps), gimbal-weighted — no linear ramps, no snap. Holds bracket each move so the eye settles. Motion blur consistent with move speed to sell realism.
- **Depth:** Subtle rack-focus / shallow-DOF cues on macro shots to draw the eye to the featured component while keeping the subject unaltered.

---

## 5. Lighting Plan (studio recreation)

Goal: convert the flat overcast source into a controlled **blacked-out studio** look, premium and commercial.

- **Key light:** Large soft source **upper-front, ~30–45° camera-side**, shaping the frame's top surfaces and driving the primary highlight roll-off on the grey tubes.
- **Fill light:** Low-intensity fill opposite key to lift shadow detail just enough to keep metallic texture legible — high key-to-fill ratio to preserve high contrast.
- **Rim / edge light:** Hard back/kicker light to draw a bright separation edge along the frame tubes, wheel arcs, and saddle — the signature that lifts the subject off the yellow.
- **Highlights:** Controlled speculars on rims, crankset, and polished parts — bright but not clipped; they read as metal, not blown white.
- **Shadow placement:** Contact/ground shadow kept minimal and soft (or omitted for a pure floating-object look) so the flat yellow stays uninterrupted. Core shadows deepened for contrast.
- **Aesthetic guardrail:** No colored gels bleeding onto the subject (subject stays neutral monochrome); no lens flares; controlled, expensive, restrained.

---

## 6. Colour Treatment

- **Monochrome conversion:** Desaturate the subject to greyscale, then apply a **high-contrast tone curve** — crushed blacks, bright controlled highlights, extended mid-tone separation so tube gradients, decals, and spoke detail stay readable.
- **Metallic realism preserved:** Contrast is driven by **luminance**, not flattening — anodized alloy sheen, rim reflectivity, and tyre matte-vs-frame-semi-matte differences are kept as tonal cues. Decal edges (SCOTT / SPEEDSTER / MAVIC / GATORSKIN) stay crisp in greyscale.
- **Background:** Composited **`#FFD400`** as a solid fill on its own layer *behind* the matted subject. Enforced **perfectly flat** — no gradient, banding, vignette, or grain. If any output grain is added for filmic texture, it is applied to the **subject layer only**, never the background.
- **Consistency:** One master grade node applied identically to every shot so the monochrome and yellow read the same frame-to-frame; background hex validated per frame in QC.

---

## 7. Quality Control (pre-render gate)

Rendering does not start until **all** pass:

- [ ] **Bicycle matches uploaded image exactly** — silhouette diff vs. source within tolerance.
- [ ] **No components added, removed, or altered** — crankset, derailleur, brakes, cage/bottle, saddle, wheels all present and unmodified.
- [ ] **Logos & decals accurate** — SCOTT, SPEEDSTER, MAVIC, GATORSKIN present, correctly placed, legible.
- [ ] **Proportions unchanged** — wheel-diameter ratio, wheelbase, tube angles match source; no stretch/warp from camera moves.
- [ ] **Monochrome consistent** — same grade across all 9 shots; no colour leak into the subject.
- [ ] **Yellow background perfectly uniform** — every frame samples `#FFD400`; no gradient/banding/vignette/noise on the background layer.
- [ ] **Commercial-grade realism every frame** — lighting, speculars, and edges read as a real studio capture; no CG "plastic" look, no matte fringing on edges.

Automated checks: per-frame background hex sampler, silhouette IoU vs. source, edge-fringe detector on the matte, and a contrast/consistency check across shots.

---

## 8. Final Production Workflow (end-to-end)

1. **Image analysis** — Lock the uploaded photo as geometric master; catalog geometry, colours, materials, decals, components, lighting, angle (Section 1).
2. **Style extraction** — Codify the target look: monochrome high-contrast subject, flat `#FFD400` ground, studio lighting grammar (Section 2). *Re-derive from the real reference clip once supplied.*
3. **Scene planning** — Finalize the 9-shot list with framing, duration, and transitions (Section 3).
4. **Camera choreography** — Author eased virtual-camera moves (push/pull/orbit/macro/hero) over the fixed subject (Section 4).
5. **Lighting setup** — Recreate key/fill/rim, highlights, and shadow placement for the blacked-out studio look (Section 5).
6. **Colour grading** — Apply the monochrome high-contrast grade to the subject; composite the flat yellow background; preserve metallic texture (Section 6).
7. **Animation** — Assemble shots on the timeline with smooth motion, holds, transitions, and consistent motion blur.
8. **Rendering** — Render only after the QC gate passes; consistent codec/frame rate; background layer protected from grain.
9. **Final quality assurance** — Run the full Section 7 checklist on the rendered file (not just the timeline); fix and re-render any failing frame before delivery.

---

### Next step
Approve this plan (or share the actual reference video so Section 2 can be rebuilt as a true frame-by-frame analysis and Sections 3–6 reconciled to it). **No video will be generated until you approve.**
