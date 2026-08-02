# Pending / In Progress

Only what's still open lives here. When an item completes, delete it —
the journal records the completion.

## Active now

- [ ] **Betta — decided direction (2026-08-02), not yet bought.** The tank
      is a display tank now (`knowledge.md` "Tank purpose"). Before buying:
      shrimp back and settled first, some cover regrown where the sword was
      (a Betta hunts better in open water), then the fish **last** into an
      established layout. Prefer a **plakat** (short-fin) — sturdier
      swimmer, less fin-drag in flow. On arrival: raise temp target to
      ~24-26°C (Oase thermo; neos are fine to 26), keep an air gap under
      the lid (labyrinth breather), night airstone stays. Accept shrimp
      attrition; plan B if he turns out a relentless hunter: shrimp
      evacuate to Michelle's.
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

- [ ] **Return the shrimp from Michelle's tank (~2026-08-05±).** Both adults
      parked there 2026-08-02 during the sword-plant removal. **Gate on a
      zero-ammonia test first** — the uproot stirred mature Amazonia and a
      transient NH3 pulse is the risk. Drip-acclimate on return (Michelle's
      water ≠ this tank's).
- [ ] **Brace the lily-pipe→filter hose bends.** The 12/16mm tube wants to
      fold at the sharp 90° turn behind the bookshelf. Fix the *fixed* runs
      only (they never move now the taps handle disconnects): anti-kink
      spring + saddle clip, a 3D-printed curved cradle (dry-side), or open
      up the shelf hole for a wider radius. Support both legs, never clamp
      the apex. Re-check ripple after — freeing a kink can change flow.

## Canister transition — remaining steps

Dennerle removed **2026-06-14**; canister-solo since, no ammonia issues
(post-removal daily-test window and the ~1-month no-deep-clean window are
both long past — done). Old Dennerle sponge/filter kept as a spare, not
binned. Remaining:

1. **Heater verification still open**: in-tank heater removed 2026-06-25
   during the heatwave, before the "Oase thermo holds 22-24°C for 24h"
   check could run. Confirm on the Shelly Pill log that the canister thermo
   actually holds setpoint on a cool spell; old heater is the backup if
   not. See `tank.md` "Heater". (Matters more with a Betta coming — the
   setpoint will move to ~24-26°C.)

## Watching for

- **Ammonia after the sword uproot (2026-08-02)** — test daily until zero
  holds; gates the shrimp's return (see Open jobs).
- **Water-change volume**: no shrimp and no berried female in the tank right
  now, so changes are unconstrained (TDS self-limits at the 274 tap floor —
  the ~46% change 2026-06-28 took 429→357 with no issue). Re-tighten only if
  a female is berried again.
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
    5cm focus). **Camera arriving 2026-06-30 (PostNL).** Zero kit already
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
    - **Mount: use the 3D-printed bracket, not the case's camera lid.**
      The soldered GPIO header (factory WH — not removable) fouls that
      lid, but the camera uses the CSI connector not GPIO, so the header
      is irrelevant electrically. The bracket also gives the fixed framing
      the timelapse needs. Sit it a couple cm off the glass with a shroud
      to kill room reflections (daylight too).
  - **3D prints** (dry-side only — filament rule in `knowledge.md`
    "3D prints and the tank"): camera + IR bracket with fixed framing;
    Pi case; desk-fan mount; airline/hose clips; probe-wire rim guide.
- **Possible second tank** — the inevitable shrimp-keeper's gateway
  drug. No plans yet.
