# Pending / In Progress

Only what's still open lives here. When an item completes, delete it —
the journal records the completion.

## Active now (arrived 2026-06-15)

- [ ] **Get a working GH test — the Tetra GH reagent is dead.** No red base
      colour at all (degraded indicator), won't hold a green endpoint even at
      30 drops; KH from the same kit (~18mo) still works. Tom getting a fresh
      GH test ASAP (API GH red→green is reliable; or borrow Michelle's; a
      6-in-1 strip gives a ballpark meanwhile). **GH is unknown until then.**
- [ ] **Then re-test GH — tank AND tap.** Correct method: add drops, swirl,
      until the *whole vial holds green*; count every drop = dGH. Only then
      do we know if GH was ever actually low.
- [ ] **GH dosing — ON HOLD pending the retest.** APT GH (gypsum, Ca/Mg,
      no KH); label 10.5g/60L = 0.175 g/L (~3g full for ~17L). **1g already
      dosed 2026-06-16** (harmless even if GH was fine). Don't dose more
      until the real GH is known — it may not be needed. If it is: weigh on
      the 0.1g scale, dose **dry into the strong outflow**, raise slowly,
      retest, watch shrimp.
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

Dennerle removed **2026-06-14** (~5 days ahead of the brood-2 gate; done).
Lily pipes settled **back-centred** (Tom's preferred) — repositioning step
done, front-right inflow plan dropped, dead corner already cleared.
Remaining:

1. **Daily ammonia test, 3-4 days post-removal** (through ~2026-06-18).
   The 2026-06-13 zero was with *both* filters; canister-solo load is
   unproven. Mature Amazonia substrate carries most of the biofilter so
   risk is modest — but verify. Detectable NH3/NO2 → small daily water
   changes, watch the babies, don't panic.
2. **Heater**: ✅ in-tank heater REMOVED 2026-06-25 — now canister-only
   (Oase built-in thermo is sole heating). Removed during the heatwave before
   the "holds 22-24°C for 24h" check could run (heater idle in heat). **Still
   to verify when the heatwave breaks**: watch the Shelly Pill temp holds
   setpoint; old heater kept as backup if not. See `tank.md` "Heater".
3. **Don't open/deep-clean the canister for ~1 month** post-removal (let
   the media fully colonise as sole filter).
5. **Old Dennerle sponge/filter**: kept as a spare, not binned. **Don't
   rely on it as QT bio-seed** — household freezing won't preserve
   nitrifiers over 6-12 months; seed QT from live canister media at setup.

## Considering (not decided)

- **Betta in this tank** — floated 2026-08-02 ("something new"). Unresolved
  tension: a Betta in ~17L with Neocaridina ends realistic colony breeding
  (shrimplets are Betta food), adults are at some risk too, and the sword
  removal just reduced cover. Also wants 24-26°C+, warmer than the 22-24
  target. Decide what the tank is *for* (breeding colony vs display
  community) before buying anything.

## Watching for

- **⚠ All three broods lost — breeding record 0/3** (brood 3 never released;
  confirmed 2026-08-02). Heat and unknown GH are the live suspects. See
  `livestock.md`. **The GH retest is the single most load-bearing open item
  for breeding** — see "Active now" above.
- **Ammonia after the sword uproot (2026-08-02)** — test daily until zero
  holds; gates the shrimp's return (see Open jobs).
- **Water-change volume**: no shrimp and no berried female in the tank right
  now, so changes are unconstrained (TDS self-limits at the 274 tap floor —
  the ~46% change 2026-06-28 took 429→357 with no issue). Re-tighten only if
  a female is berried again.
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
- **Marktplaats listings** once colony plateaus — ~€0.50 each, funds
  hobby spend
- **Possible second tank** — the inevitable shrimp-keeper's gateway
  drug. No plans yet.
