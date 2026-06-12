# Pending / In Progress

Only what's still open lives here. When an item completes, delete it —
the journal records the completion.

## Arriving (ordered 2026-06-12)

- [ ] TDS pen — XLUX Digital, Amazon.nl, arriving Mon 2026-06-15
- [ ] GH/KH+ remineraliser — 2HR Aquarist APT Sky Plus (€16.90),
      Amazon.nl, arriving Mon 2026-06-15
- [ ] Ammonia/Nitrite/Nitrate test kit — Colombo Aqua triple (€38.69),
      bol.com, arriving 2026-06-13. (Also have Tetra WaterTest Set:
      pH, GH, KH, NO₂, CO₂ — full coverage between the two.)

## To buy

- [ ] Cuttlebone (pet/bird shop, ~€2) — slow-release calcium buffer for
      nerite shells. Tuck in filter chamber or behind rock.

## To confirm

- [ ] Eheim Double Tap 12/16mm × 2 — arrival/fit unconfirmed; wanted for
      click-disconnect maintenance (drop the canister without spilling
      either line).

## Canister transition — remaining steps

1. **Ammonia test before removing Dennerle** (~2026-06-16 earliest; test
   kit arrives 2026-06-13). Zero → remove Dennerle. Detectable → wait
   another week. **Mandatory — no seed sponge was transferred.** Brood 2
   released 2026-06-05, so removal also not before 2026-06-13 (1-week
   buffer); the ammonia gate is the later of the two.
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
- **Pi Zero 2 W tank telemetry node** (Pi won early June 2026; decided
  2026-06-12 — see journal). Read-only: observes and logs, never
  actuates; smart plugs keep all control.
  - **Phase 1 — temp logging**: DS18B20 waterproof probe (~€5) +
    4.7kΩ pull-up on GPIO4 (1-Wire). Log every ~5 min to
    `data/temp-log.csv` (high-frequency — separate from the curated
    `measurements.csv`); ntfy.sh push alert outside 22-24°C; nightly
    cron commits + pushes the log. First job: verify the canister
    thermo's 24h hold (step 2 in "Canister transition" above).
  - **Phase 2 — camera**: NoIR camera module + Zero-size CSI ribbon
    adapter + small 850nm IR illuminator (invisible to shrimp).
    Pre-dawn (~4am) snapshot covers the O2 blind-spot window; daily
    snapshot + timelapse; live MJPEG stream viable on the Zero 2 W.
    Snapshots go to a retention-capped dir, **not** `journal/` —
    journal photos stay curated.
  - **Phase 3 — leak sensor**: moisture sensor or bare probe wires
    (~€2) on the cabinet floor under the canister, GPIO interrupt →
    ntfy.sh push. Covers the below-waterline siphon risk; check after
    every maintenance disconnect. Higher value while the Eheim
    double-taps fit is still unconfirmed.
  - **Phase 4 — e-ink status display**: small e-ink HAT (e.g.
    Waveshare 2.13"). Shows current temp, last measurement, days since
    water change, next date-gated task — rendered from this repo +
    `data/temp-log.csv`. E-ink = zero light emission next to the
    tank's photoperiod.
- **Marktplaats listings** once colony plateaus — ~€0.50 each, funds
  hobby spend
- **Possible second tank** — the inevitable shrimp-keeper's gateway
  drug. No plans yet.
