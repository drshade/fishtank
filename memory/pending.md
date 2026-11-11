# Pending / In Progress

Only what's still open lives here. When an item completes, delete it —
the journal records the completion.

## Active now

- [ ] **GH test — DEMOTED to nice-to-have (2026-08-02).** Was
      breeding-critical; breeding is shelved, so this only serves the
      nerite shell-erosion question now. If bothered: fresh test (API GH,
      or borrow Michelle's — the Tetra reagent is dead), tank AND tap,
      drops until the whole vial *holds* green. GH dosing stays on hold
      accordingly (APT GH on hand, 1g dosed 2026-06-16, ~3g would be a
      full dose for 17L).
- [ ] **Return APT Sky PLUS** (GH+KH, ordered by mistake) — raises KH
      (already 11), wrong for this tank; send back, don't use.

(TDS pen arrived — tank 494 / tap 274 recorded; see `parameters.md`.)

(Shelly monitoring kit installed 2026-06-25 — Pill+probe, H&T Display, Flood S,
Button 4. Hardware now in `tank.md` "Monitoring". The Shelly *software*
— power-dropout/stuck-heater alarms + auto log extraction — is still to build,
see "Longer-term projects".)

## Open jobs

- [ ] **Water tests — baseline due Thu 2026-11-13**, then a second set
      right before the next water change. Nothing has been tested since
      2026-06-28 and Roy (fed daily) arrived in between. Full set both
      times: TDS tank + tap, pH, KH, NH3, NO2, **NO3** (the one that now
      matters — between-change nitrate drift tells you if the change
      cadence keeps up with a fed fish). Log rows to `measurements.csv`.
      GH still untestable (dead reagent). Last change: 2026-11-09.
- [ ] **Brace the lily-pipe→filter hose bends.** The 12/16mm tube wants to
      fold at the sharp 90° turn behind the bookshelf. Fix the *fixed* runs
      only (they never move now the taps handle disconnects): anti-kink
      spring + saddle clip, a 3D-printed curved cradle (dry-side), or open
      up the shelf hole for a wider radius. Support both legs, never clamp
      the apex. Re-check ripple after — freeing a kink can change flow.

## Canister transition — DONE

Dennerle removed **2026-06-14**; canister-solo since, no ammonia issues.
Heater verification closed 2026-11-10: the Oase thermo holds 25°C on its
own (see `tank.md` "Heater"). Old Dennerle sponge and old in-tank heater
kept as spares, not binned.

## Watching for

- **Roy vs shrimp** — nearly two months of peace (2026-11-10): both
  shrimp are full-size adults, too big to be prey, and are totally
  relaxed around him. The risk is a **top-up of teenagers** from
  Michelle's tank — Betta-snack size. Top up with adults, or expect
  losses; plan B if he turns hunter is still shrimp → Michelle's.
- **Water-change volume**: no berried female, so changes are unconstrained
  (TDS self-limits at the 274 tap floor — the ~46% change 2026-06-28 took
  429→357 with no issue). Re-tighten only if a female is berried again;
  temp-match matters more now with a Betta in.
- **Tetra AirSilent Mini noise / bubble quality** — Tom's call whether
  the throttled setup is tolerable long-term. Pump must stay on its
  towel (see `knowledge.md` "Air pump placement").

## Longer-term projects

(Dropped 2026-08-02 with the display-tank pivot: **QT tank** for genetics
refresh and **Marktplaats listings** — both assumed a growing breeding
colony; shrimp top-ups now come from Michelle's tank. See `knowledge.md`
"Tank purpose".)

- **Tank monitoring — Shelly-native, Pi for camera only** (rescoped
  2026-06-14; supersedes the original Pi-centric plan in journal
  2026-06-12). Power-sensing is native to the strips and impossible on
  the Pi; leak/ambient/control are better as finished Shelly devices; one
  app, no hub. Hardware ordered — see "Arriving — Shelly monitoring kit".
  - **Equipment-failure alarm**: Shelly Script on the strip watches the
    canister socket's active power → push on dropout (the pre-dawn O2
    single-point-of-failure). Catches total power loss, **not** an
    airlock/partial clog (motor still spins, power unchanged).
  - **Heater duty / stuck-heater**: heater socket power = clean on/off
    signal; alarm on continuous draw when it shouldn't fire.
  - **Logging**: Shelly app auto-logs temp/humidity/water-temp (free tier
    hourly, CSV export). `measurements.csv` stays for chemistry
    (GH/KH/pH/ammonia) the sensors can't read.
  - **Future — automated extraction**: Pi cron → Shelly Cloud Control API
    (v2; or local RPC for the WiFi devices) → pull readings, compute 24h
    min/max/current locally (no documented sensor-history endpoint —
    poll + compute, fine for slow tank temps) → append
    `data/shelly-log.csv` → commit + push. **Auth key stays OUT of the
    repo** (env/ignored file). Pin Shelly devices to static IPs.
  - **Pi = camera only**: Pi Zero 2 W**H** (with headers; won early June
    2026) + **standard (IR-cut) Camera Module 3 Wide** (12MP, 102° FOV,
    5cm focus). **Camera arrived and working**: Pi is up as `tankspy`
    (ssh), `tools/grab-frame.sh` pulls stills, aiming/focus tests done
    2026-07-05, re-verified 2026-11-09. **Nothing automated on the Pi
    yet** (no cron, no HTTP trigger — checked 2026-11-09); the mount is
    being designed first (see "Mount" below). Zero kit already
    includes the case (3 lids) and the CSI ribbon (15-pin camera → 22-pin
    Zero, confirmed on hand). **Standard, not NoIR** (decided 2026-06-14):
    the daily
    published photo needs accurate colour, and NoIR's reddish daytime cast
    would ruin it. Night vision dropped — the pre-dawn O2 check it existed
    for is now covered by the Shelly power-dropout alarm + night airstone +
    Pill temp alarm. **No IR illuminator** needed. (BME280 / DIY leak /
    e-ink also dropped — superseded by the BLU H&T and Flood.)
    - **Trigger model — Pi always-on** (~0.5W ≈ €2/yr; simpler + safer
      than power-cycling a Zero, which risks SD corruption unless on a
      read-only rootfs). Two capture modes, two triggers, two folders:
      - **Scheduled timelapse frame** — cron shoots one frame/day at a
        *fixed time* (consistent light) → `camera/timelapse/`. High volume
        (~365/yr): keep these **out of the curated main repo** — Pi-local
        + backed up elsewhere (or a separate `fishtank-timelapse` repo);
        commit only the rendered video here. Don't leave frames SD-only (an
        SD failure loses the whole timelapse). Fixed framing essential —
        the 3D bracket must register position repeatably.
      - **Button-triggered journal shot** — BLU button → Shelly → HTTP to
        the running Pi → ad-hoc capture into a staging dir
        `camera/captures/`. **Not** auto-dumped into `journal/`: a curated
        pick graduates into a journal entry via `/log` (keeps the journal
        hand-picked). Compress per the photo convention (≤1600px JPEG).
    - **Mount — TRAY PRINTED AND FITTING (2026-11-10), hook still to
      model/print (Onshape → A1 mini, PLA).** One thin tray, Pi and camera **side by side** on the
      same base (~15mm thick), hanging flat against the glass from a
      **gravity hook over the rim** (hook + neck, not a spring clip), Pi
      on top, camera at the bottom end, mounted upside down (capture with
      `--rotation 180`). Lens looks **through the tray floor**, recessed
      ~1mm behind the outer face with a 60° flare — **the lens must never
      touch the glass** (it blocks the focus mechanism). Flat face on the
      glass replaces the old shroud idea. Neck length sets the framing:
      lens ~14-15cm below the rim ≈ mid water column (11cm is the minimum
      the case allows) — tune by eye with `grab-frame.sh` before fixing it.
      - Stacked case-with-camera-lid was tried and dropped: the factory
        GPIO header (WH, not removable) fouls a camera above the Pi, and
        it came out ~27mm thick.
      - **Fit sizes that work (print two, this printer/PLA)**: pins
        Ø2.55 (Pi) / Ø2.0 (camera) — ~0.2 under the hole; single-pin
        coupons at nominal passed but four pins at once bound. Pins
        locate only; **hold-down = lid tubes** over each pin onto the
        board, bores 0.25 radial over the pin (Ø3.05 / Ø2.5). Lid: full
        lip at 0.1 offset + two 0.3mm friction bumps (0.2 was loose).
        PCBs measured: camera ~0.8mm, Pi 1.0mm. Slice with small-feature
        slowdown (min layer time ~8-10s) or pin tops print fat.
      - Tray (`flat mount`, `case(5)`/`lid(6)` exports): 130×36×15.5,
        1.5 floor and walls; camera posts 8mm (lens tip ~1.2mm behind
        the outer face), 11mm window with 45° chamfer outside — verified
        no vignetting at 102°; ribbon straight ~30mm camera→CSI; USB
        slot 12.5mm (Tom's call, works).
      - **Hook**: separate part, test version printed and hanging
        2026-11-10. Foot 7×31×2 with Ø4.9 holes over the Ø4.5 Pi bosses
        (Pi + lid tubes clamp it); 8mm neck through an 8.5mm end-wall
        notch, 3mm thick outside, underside flush with the glass face;
        rim slot 5.2 (glass 5). Print flat, top face down, supports
        under the return only.
        **Final hook (+20mm neck) installed 2026-11-11** — framing done:
        side pane toward the planted end, lens at carpet/rock level, no
        water line. Far pane looks at the bookshelf side (grey backdrop,
        nothing to fix). **Capture settings (fixed, 2026-11-11)**:
        `--rotation 180 --autofocus-mode manual --lens-position 10
        --shutter 6000` (focus sweep: 10 dioptres puts the rocks
        mid-frame sharpest; `grab-frame.sh -L 10 -- --shutter 6000`).
        Next: lid(10) print, then the daily cron using these.
      - Reference dims (official drawings): Pi holes 58×23mm, 3.5mm from
        edges, power USB centred 54mm from the SD end; camera holes
        21×12.5mm, lens level with one hole pair, housing 10.8mm square,
        lens tip 8.3mm off the board. Measure the real header height
        before fixing tray depth.
      - Capture notes for later: fixed mount cures the blur (hand-held
        frames shook at the auto 1/17s shutter); cap shutter ~1/60s for
        fish; the view runs straight through the tank to the room behind
        — pick the pane or add a backing card.
  - **3D prints** (dry-side only — filament rule in `knowledge.md`
    "3D prints and the tank"): camera/Pi hanging tray (see "Mount"
    above); desk-fan mount; airline/hose clips; probe-wire rim guide.
- **Possible second tank** — the inevitable shrimp-keeper's gateway
  drug. No plans yet.
