# Pending / In Progress

Only what's still open lives here. When an item completes, delete it —
the journal records the completion.

## Arriving Monday 2026-06-15

- [ ] TDS pen — XLUX Digital, Amazon.nl, arriving Mon 2026-06-15
- [ ] **GH-only** remineraliser — plain **2HR Aquarist APT Sky**
      (Ca/Mg, leaves KH/pH alone — correct for the GH 2 / KH 11 profile),
      Amazon.nl, arriving Mon 2026-06-15. Trace copper → dose
      conservatively; raise GH 2 → ~6 slowly (babies).
- [ ] **Return APT Sky PLUS** (GH+KH version, ordered by mistake) — also
      arrives Mon 2026-06-15. Raises KH, wrong for this tank; send back.

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

## To confirm

- [ ] Eheim Double Tap 12/16mm × 2 — arrival/fit unconfirmed; wanted for
      click-disconnect maintenance (drop the canister without spilling
      either line).

## Canister transition — remaining steps

1. **Ammonia gate — precondition met 2026-06-13** (NH3 0 / NO2 0). But
   that's with *both* filters running, which proves the precondition, not
   that the canister alone holds the load. Brood 2 is only ~8 days old —
   don't pull the Dennerle on a fresh brood. Wait until brood 2 is ~2
   weeks (≈2026-06-19), then remove the Dennerle and **test ammonia daily
   for 3-4 days**. Detectable after removal → reinstate/wait a week.
2. **Heater**: verify canister thermo holds 22-24°C for 24h → then remove
   the in-tank heater (paused during the heatwave — resume now it's
   cooled). Keep the old heater as backup, don't bin.
3. **Reposition lily pipes** after Dennerle out: inflow → front-right
   dead corner (Option A) or outflow blowing into the corner (Option B) —
   decide then (see `memory/tank.md`). Outflow angled along long axis,
   just below waterline. Re-check the flow throttle afterwards (less
   total flow may need the outflow opened a touch).
4. **Don't open/deep-clean the canister for ~1 month** after Dennerle
   removal (let bacteria fully colonise the new media).
5. **Old Dennerle sponge**: squeeze out in tank water, then **freeze in a
   sealed bag for future QT-tank seeding** — recommended, free insurance —
   or bin. Don't add it to the canister (suboptimal media + dumps
   accumulated detritus).

## Watching for

- **Brood 3** — saddle visible 2026-06-07; confirm berry. Expected
  release ~early July 2026. See `livestock.md`.
- **No big water changes before ~2026-06-19** (2 weeks after brood 2's
  2026-06-05 release; 3 weeks if convenient).
- **Detritus reduction** in the front-right corner once a lily pipe is
  positioned for it (step 3 above). Should self-clean.
- **Tetra AirSilent Mini noise / bubble quality** — Tom's call whether
  the throttled setup is tolerable long-term. Pump must stay on its
  towel (see `knowledge.md` "Air pump placement").
- **Colony reaching ~30-40 visible juveniles** — nighttime airstone goes
  from "optional insurance" to load-bearing.

## Longer-term projects

- **QT tank for new shrimp introductions** (6-12 months out, when
  refreshing genetics):
  - 5-15L plastic tub (Really Useful Box) or cheap small glass tank
  - Sponge filter driven by air pump + airline — *use the frozen
    Dennerle sponge as instant bio-seed*
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
  - **Pi = camera only**: Pi Zero 2 W (won early June 2026) + NoIR module
    + Zero CSI ribbon + 850nm IR illuminator. Pre-dawn (~4am) snapshot
    covers the O2 blind-spot window Shelly can't; daily snapshot +
    timelapse; live MJPEG viable on the Zero 2 W. Snapshots → a
    retention-capped dir, **not** `journal/`. Parts/gotchas (GPIO header,
    CSI ribbon): journal 2026-06-12. BME280 and DIY leak/e-ink dropped —
    superseded by the BLU H&T and Flood.
  - **3D prints** (dry-side only — filament rule in `knowledge.md`
    "3D prints and the tank"): camera + IR bracket with fixed framing;
    Pi case; desk-fan mount; airline/hose clips; probe-wire rim guide.
- **Marktplaats listings** once colony plateaus — ~€0.50 each, funds
  hobby spend
- **Possible second tank** — the inevitable shrimp-keeper's gateway
  drug. No plans yet.
