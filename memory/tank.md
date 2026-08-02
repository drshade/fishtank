# Tank

## Vessel
- **Dennerle Nano Cube 20** — confirmed. ~25×25×30cm, 20L nominal,
  ~17L actual water after substrate and hardscape
- Established 6+ months as of May 2026 (so ~November 2025)
- Location: Amsterdam apartment, on a desk next to Tom's work area (he
  watches it constantly during work hours — this is part of the safety
  story, see `knowledge.md` "Aeration decision")

## Substrate
- **ADA Amazonia** aquasoil, mature
- Lava rocks as hardscape

## Plants
- Hairgrass carpet (dense — primary shrimplet hiding spot, do not siphon
  into it while babies are small)
- **Sword plant REMOVED 2026-08-02** — had overgrown the tank. Uprooting it
  disturbed the Amazonia; shrimp were parked in Michelle's tank for a few
  days while it settles (see `pending.md`). Cover is reduced until other
  growth fills in.
- Other planted growth

## Lighting
- Chihiros main light
- Accent spot light running a few hours after main light, aesthetic only

## CO2
- Chihiros CO2 system with glass diffuser
- 4/6mm silicone tubing
- Cuts off ~1 hour before lights-off (correct, do not change)
- Spare ceramic CO2 diffuser available (unused — pore size too fine for
  the air pump to drive)

## Filter — primary (installed 2026-05-26)
- **Oase FiltoSmart Thermo 100** (canister) — installed and running
  2026-05-26
  - 600 L/h, 100W integrated heater, 12/16mm tubing
  - Rated to 100L planted; oversized for ~17L → flow-control valves on
    **both** lines, dialed to a gentle surface ripple (confirmed 2026-05-26)
  - Ceramic tube bio-media loaded. **No Dennerle seed sponge transferred** —
    media colonising from scratch off the tank's bacterial reservoir.
    Dennerle removal is **ammonia-test-gated, not calendar-gated** (see
    journal 2026-05-26).
  - **Glass lily pipes** (GreenWorks 13mm inflow + outflow), **back wall,
    ~centred — Tom's settled preferred position** (moved there gradually
    over time, confirmed permanent 2026-06-15). Stainless Filter Guard slid
    up to fully cover the inflow holes (baby-safe). The back-centred flow
    alone cleared the front-right dead corner, so the old plan to move the
    inflow into that corner is dropped.
  - **Eheim Double Taps ×2 installed** on both lines between filter and
    lily pipes (confirmed 2026-06-15) — shut both to isolate each end, then
    click-disconnect to drop the canister for service without draining
    either side. Service model: fixed lily-pipe→tap runs stay braced in
    place; only the tap→canister stub moves. No hose slack needed (slack is
    what kinks — the tap is the joint, not the hose).
  - Unused from box: supplied plastic intake/outflow (glass used instead).

## Filter — old Dennerle (removed 2026-06-14)
- Pulled 2026-06-14 after ~3 weeks parallel-running; **the canister is now
  the sole filter** (and sole surface agitation — night airstone is now
  load-bearing, see `knowledge.md` automation safety).
- Ammonia precondition was met 2026-06-13 (zero) with *both* running, which
  proved the system, not canister-solo — so canister-solo load is being
  verified by **daily ammonia tests for 3-4 days** (see `pending.md`).
- Sponge + filter body kept as a spare, not binned. **Not** added to the
  canister (suboptimal media + dumps detritus), and **not** relied on as QT
  bio-seed — household freezing won't keep nitrifiers alive over the 6-12mo
  to QT setup; seed QT from live canister media then instead (`pending.md`).

## Heater
- **In-tank heater REMOVED 2026-06-25.** The Oase FiltoSmart Thermo's
  built-in 100W heater is now the **sole heating**. Tank runs canister-only:
  one box does filtration + heating, no in-tank equipment.
- Removed during the heatwave (heater idle anyway at 27°C), so the planned
  "thermo holds 22-24°C for 24h" verification couldn't run first. **The real
  test comes when the heatwave breaks** — watch the Shelly Pill temp; if the
  canister doesn't hold setpoint, the old in-tank heater is **kept as backup**
  (not binned), ready to drop back in.

## Aeration (installed 2026-05-22, expanded 2026-05-24)

Current chain:

```
Tetra AirSilent Mini pump
  → check valve (arrow toward tank)
  → flow control valve (NEW 2026-05-24, lets Tom tune O2 manually)
  → T/Y-splitter
  → Tetra AS25 airstone — position 1
  → Tetra AS30 airstone — position 2
```

- **Stone 1 (AS25 or AS30, interchangeable)**: right side, halfway
  along the wall — between back-right CO2 corner and front-right dead
  corner. Helps push aeration toward the dead spot.
- **Stone 2 (the other one)**: back wall, just below and slightly
  right of the filter.
- AS25 and AS30 differ only in length (25mm vs 30mm); identical
  pore structure and bubble characteristics.
- **Throttling**: now has *both* natural (split → half airflow per
  stone) and active (flow valve) control. Coarse-bubble issue from
  2026-05-23 should be fully addressable.
- Smart plug controlled — schedule should be **inverse to CO2** (night
  only, day off so it doesn't off-gas CO2 during plant photosynthesis)

## Smart plug system
- Tom controls CO2, lights, and air pump via smart plugs

## Monitoring — Shelly (installed 2026-06-25)
All Shelly-native, one app, no Home Assistant. Ordered 2026-06-14, installed
2026-06-25. Active temperature monitoring of **both room and tank** now live.
- **The Pill + DS18B20 waterproof probe** — water temp. USB-C powered on an
  **always-on socket** (never switched, else monitoring dies silently).
- **BLU H&T Display** — ambient air temp/humidity + light + e-ink readout.
- **Flood S Gen4** — leak sensor on the cabinet floor under the canister.
  Re-check placement after every maintenance disconnect.
- **BLU RC Button 4 ZB** — 4-button desk remote, paired Bluetooth mode
  (strips are the gateway). Currently used to **manually toggle the lights**.
  Any flow/aeration-cutting action must be a timed auto-resume scene only —
  see `knowledge.md` "Automation safety".
- Still to build (not hardware): Shelly Script power-dropout / stuck-heater
  alarms and automated log extraction — see `pending.md` longer-term.

## Layout / flow geometry
- Filter on back-left wall, **heater immediately next to it** (same
  back-left area); **airstone 2** sits just below/right of the filter
- CO2 diffuser: back-right corner (hidden behind plants)
- **Airstone 1**: right-side wall, halfway along (between back-right
  CO2 and front-right dead corner)
- **Front-right corner — dead zone RESOLVED 2026-06-15.** The back-centred
  canister flow (now sole filter) reaches it; it no longer accumulates
  detritus. Only a thin mulm layer remains around the hairgrass base, left
  deliberately (baby food, ammonia 0). The planned front-right inflow
  reposition is dropped — back-centred is preferred and works. To clear the
  base film if wanted: gentle stir above the carpet, let the filter polish
  it (mesh guard protects the babies); don't siphon into the carpet.

## Not in the tank, deliberately decided against
- Sponge filter as primary — discussed and rejected; canister + sponged
  intake is better for this setup (preserves CO2, better aesthetics, more
  capacity)
- Mattenfilter — discussed; overkill for this tank
- BioMaster 2 Thermo 250 — too physically big (filter would be larger
  than the tank itself); FiltoSmart Thermo 100 is the right scale
