# Water Parameters

## Targets (Neocaridina, this tank)

| Parameter | Target | Notes |
|---|---|---|
| GH | UNKNOWN — no working test | ⚠ Prior readings VOID, and the **Tetra GH reagent is now dead** (no red base, won't hold green at 30 drops; KH from same ~18mo kit fine). Need a fresh GH test (API GH / borrow Michelle's / strip for ballpark), then retest tank + tap (drops until the whole vial holds green). **Hold dosing until GH is readable.** |
| KH | ~7-11 (don't chase) | Tank measured **11** (2026-06-13); **tap KH 7** (2026-06-15). Tank's 11 is tap's 7 concentrated by evaporation. Regular tap changes drift it toward 7 (closer to textbook) on their own — bonus, not a goal. |
| TDS | tank ~290-330 on tap (150-250 is RO-only) | **Tank 429 (2026-06-28, +35 in 3 days, heatwave evaporation; water change due); tap 274 (2026-06-15).** Trajectory 494→400→462(+GH dose)→360→394→**429**. 150-250 is unreachable on tap (274 floor) — that figure assumes RO. On tap the realistic home is ~290-330; drifts up from top-offs between changes. Largely carbonate (KH 11 ≈ 195 ppm) + Na/other ions. **Don't crash it with big changes** while a berried female is carrying. Decision tap-vs-RO pending — see `knowledge.md`. |
| pH | Stable > exact | **Measured 7.5 (2026-06-13) — alkaline; the soil's acid buffering is spent.** Consistency matters more than the number. |
| Temperature | 22-24°C | Neos tolerate 18-25°C; aim mid-range. **Actively monitored** since 2026-06-25 (Shelly Pill probe, water + room — see `tank.md`). **Tank 27.7°C (2026-06-28, room 28.1°C/53% RH, fan on, heater idle)** — above range but expected; heatwave broke 2026-06-27, cooling hoped from 2026-06-28. Fan is the lever. Warm water = less O2, so night airstone is load-bearing. |

## Measurements

Full append-only log: [`data/measurements.csv`](../data/measurements.csv)
(`date,tds_ppm,gh,kh,ph,temp_c,notes`). New reading → append a CSV row,
then refresh the latest-reading line below.

**Latest**: 2026-06-28 — **TDS 357** after a water change (429 → 357 vs tap
274 ≈ a **~46% swap** — large, but no babies in tank now so no crash risk;
slow-dripped + temp-matched). Lands just above the ~290-330 home, good
direction. Tank 27.7°C (room 28.1°C/53% RH). **Brood-3 female still berried** —
watch her a day or two for any dropped eggs after the 72 ppm swing, though the
slow drip + hard (GH-bearing) tap kept the hardness change gentle.
**⚠ GH unmeasured — no valid reading exists.** The old Tetra-kit attempts
(tank, tap) were method errors *and* the reagent has since died — discard them
entirely. **The tap is NOT GH 0** (that was a bad reading, now voided);
Amsterdam tap carries meaningful hardness. Real GH for both tank and tap is
unknown until a fresh test (see `pending.md`). Don't build reasoning on the
old numbers. **Solid numbers:** TDS — tap 274, tank
494→400(43% change 06-15)→462(+1g GH dose 06-16)→360(large change 06-19)→394(2026-06-25)→**429**(2026-06-28).
KH — tank 11, tap 7. pH 7.5. NH3 ~0 on canister-solo (Dennerle out
2026-06-14). NO2/NO3 0 (2026-06-13).

_Calibration: to trust absolute temp, dunk the thermometer in well-stirred
ice water (= 0°C exactly) and note the offset; subtract it from tank
readings._

## Remineralisation

- **GH-only** booster (APT Sky — Ca/Mg, leaves KH/pH alone), **not**
  GH/KH+ — KH is already 11. **Dosing is on hold pending a real GH number.**
  The tap carries meaningful hardness (it is *not* GH 0), so water changes
  already bring in some calcium — dosing is *one* lever, not the only one.
  Decide whether/how much to dose once GH is actually readable; if dosing,
  raise *slowly* (sudden hardness swings cause bad molts) and note it nudges
  TDS up too. Rationale: `knowledge.md` ("Water source"). Product/method:
  `pending.md`.
- **APT GH is gypsum-based** (calcium sulfate) — won't fully dissolve in a
  small container (cloudy stock is normal; ~2.4 g/L solubility), but 17L
  dissolves a gram fine over a few hours. **Dose the weighed powder dry into
  the strong outflow current** (away from the carpet) — a slurry settles too
  fast in the jug to dose evenly. First dose 1g on 2026-06-16.

## Water change protocol (current — no babies *right now*; brood-3 berried, release imminent)

- **Volume**: with no babies, larger changes are safe again — TDS self-limits
  at the 274 tap floor (even ~50% lands ~350, can't crash it; a ~46% change
  on 2026-06-28 took 429→357 fine). **But** keep them gentle while the female
  is berried, and note brood 3 releases ~early July → the small-change +
  no-carpet-siphon regime returns the moment it does.
- **Refill**: slow drip / gentle stream over 5-10 min
- **Temperature**: match within 1°C (Tom always does)
- **Parameters**: tap is hard + buffered, so a change brings in GH/KH and
  drifts TDS toward the 274 floor — no need to pre-match; just don't swing
  hardness hard while berried
- **Frequency**: light weekly maintenance OK
- **Carpet siphoning**: technically OK now no babies are in the carpet, but
  brood 3 is days away — not worth a deep carpet clean now. Inspect any siphon
  output in case the female sheds eggs.

## TDS / GH dynamics in shrimp tanks

- TDS climbing = minerals accumulating from food + tap top-offs →
  water change due
- TDS dropping = shrimp eating minerals via molts faster than replaced
  → remineralise top-off water
- More shrimp = more molts = faster GH depletion

## Evaporation top-up

- With lid off + surface agitation, expect ~0.5-1L/week loss
- Top up every few days, don't let water drop more than ~1cm (else
  TDS/minerals concentrate)
- **Plain Amsterdam tap is fine — no dechlorinator needed** (NL/Waternet
  distributes chlorine- and chloramine-free water by national policy).
  Run the cold tap until properly cold first to flush copper/metals from
  pipes (neos are copper-sensitive). Or use remineralised RO. Match temp
  within 1°C either way. See `knowledge.md` "Water source".
