# Pending / In Progress

Only what's still open lives here. When an item completes, delete it —
the journal records the completion.

## Active now (arrived 2026-06-15)

- [ ] **Re-test GH PROPERLY first — tank AND tap.** Prior readings were a
      method error (stopped at first green flash). Correct method: add drops,
      swirl, until the *whole vial holds green*; count every drop = dGH.
      Until we have real numbers we don't actually know if GH was ever low.
      Also check KH wasn't read the same flawed way.
- [ ] **GH dosing — ON HOLD pending the retest.** APT GH (gypsum, Ca/Mg,
      no KH); label 10.5g/60L = 0.175 g/L (~3g full for ~17L). **1g already
      dosed 2026-06-16** (harmless even if GH was fine). Don't dose more
      until the real GH is known — it may not be needed. If it is: weigh on
      the 0.1g scale, dose **dry into the strong outflow**, raise slowly,
      retest, watch shrimp.
- [ ] **Return APT Sky PLUS** (GH+KH, ordered by mistake) — raises KH
      (already 11), wrong for this tank; send back, don't use.

(TDS pen arrived — tank 494 / tap 274 recorded; see `parameters.md`.)

## Arriving — Shelly monitoring kit (ordered 2026-06-14, ~€78)

All Shelly-native; integrates with the existing Gen4 strips + Shelly app
(no Home Assistant). Full reasoning: journal 2026-06-14.

- [ ] **BLU RC Button 4 ZB** (€19.24) — 4-button desk remote for
      phone-free socket control. Pair in **Bluetooth mode** (any button
      ×4 → blue LED), ignore Zigbee; strips are the gateway. Map any
      flow/aeration-cutting action as a **timed auto-resume scene only**
      — see `knowledge.md` "Automation safety".
- [ ] **BLU H&T Display ZB** (€25.41) — ambient air temp/humidity + light
      sensor + e-ink readout. BLE via strip gateway, ~2yr battery.
- [ ] **The Pill** (€9.98) + **DS18B20 3.5mm waterproof probe** (€4.11) —
      water temp, scriptable. USB-C powered → **always-on socket only**,
      never switched (else monitoring dies silently).
- [ ] **Flood S Gen4** (€19.24) — leak sensor for the cabinet floor under
      the canister. Re-check placement after every maintenance disconnect.

## Open jobs

- [ ] **Brace the lily-pipe→filter hose bends.** The 12/16mm tube wants to
      fold at the sharp 90° turn behind the bookshelf. Fix the *fixed* runs
      only (they never move now the taps handle disconnects): anti-kink
      spring + saddle clip, a 3D-printed curved cradle (dry-side), or open
      up the shelf hole for a wider radius. Support both legs, never clamp
      the apex. Re-check ripple after — freeing a kink can change flow.

## Canister transition — remaining steps

Dennerle removed **2026-06-14** (~5 days ahead of the brood-2 gate; done).
Lily pipes settled **back-centred** (Tom's preferred) — repositioning step
done, front-right inflow plan dropped, dead corner already cleared.
Remaining:

1. **Daily ammonia test, 3-4 days post-removal** (through ~2026-06-18).
   The 2026-06-13 zero was with *both* filters; canister-solo load is
   unproven. Mature Amazonia substrate carries most of the biofilter so
   risk is modest — but verify. Detectable NH3/NO2 → small daily water
   changes, watch the babies, don't panic.
2. **Heater**: verify canister thermo holds 22-24°C for 24h → then remove
   the in-tank heater (resume verification now the heatwave's past). Keep
   the old heater as backup, don't bin.
3. **Don't open/deep-clean the canister for ~1 month** post-removal (let
   the media fully colonise as sole filter).
5. **Old Dennerle sponge/filter**: kept as a spare, not binned. **Don't
   rely on it as QT bio-seed** — household freezing won't preserve
   nitrifiers over 6-12 months; seed QT from live canister media at setup.

## Watching for

- **Brood 3** — saddle visible 2026-06-07; confirm berry. Expected
  release ~early July 2026. See `livestock.md`.
- **No big water changes before ~2026-06-19** (2 weeks after brood 2's
  2026-06-05 release; 3 weeks if convenient).
- **Ammonia daily** for 3-4 days post-Dennerle-removal (through
  ~2026-06-18) — canister-solo load verification (see Canister transition).
- **Tetra AirSilent Mini noise / bubble quality** — Tom's call whether
  the throttled setup is tolerable long-term. Pump must stay on its
  towel (see `knowledge.md` "Air pump placement").
- **Colony reaching ~30-40 visible juveniles** — nighttime airstone goes
  from "optional insurance" to load-bearing.

## Longer-term projects

- **QT tank for new shrimp introductions** (6-12 months out, when
  refreshing genetics):
  - 5-15L plastic tub (Really Useful Box) or cheap small glass tank
  - Sponge filter driven by air pump + airline — **seed from live canister
    media at setup time** (the stored Dennerle sponge won't hold live
    nitrifiers over 6-12 months; don't count on it as a bio-seed)
  - Nano heater (~€10-15)
  - Loose-fitting lid with air holes (shrimp jump when stressed)
  - Bare-bottom for easier health observation
  - One cholla wood / almond leaf for cover
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
    5cm focus). **Only the camera is still to buy** — the Zero kit already
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
- **Marktplaats listings** once colony plateaus — ~€0.50 each, funds
  hobby spend
- **Possible second tank** — the inevitable shrimp-keeper's gateway
  drug. No plans yet.
