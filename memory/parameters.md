# Water Parameters

## Targets (Neocaridina, this tank)

| Parameter | Target | Notes |
|---|---|---|
| GH | UNKNOWN — no working test | ⚠ Prior readings VOID, and the **Tetra GH reagent is now dead** (no red base, won't hold green at 30 drops; KH from same ~18mo kit fine). Need a fresh GH test (API GH / borrow Michelle's / strip for ballpark), then retest tank + tap (drops until the whole vial holds green). **Hold dosing until GH is readable.** |
| KH | ~7-11 (don't chase) | Tank measured **11** (2026-06-13); **tap KH 7** (2026-06-15). Tank's 11 is tap's 7 concentrated by evaporation. Regular tap changes drift it toward 7 (closer to textbook) on their own — bonus, not a goal. |
| TDS | tank ~290-330 on tap (150-250 is RO-only) | **Tank 394 (2026-06-25, +34 in 6 days, no change since); tap 274 (2026-06-15).** Trajectory 494→400→462(+GH dose)→360→**394**. 150-250 is unreachable on tap (274 floor) — that figure assumes RO. On tap the realistic home is ~290-330 (tap + modest GH dose); drifts up from top-offs between changes. Mostly carbonate (KH 11 ≈ 195 ppm) + Na, not Ca. **Don't crash it with big changes** — 10-15% (babies; berried female; stability). Decision tap-vs-RO pending — see `knowledge.md`. |
| pH | Stable > exact | **Measured 7.5 (2026-06-13) — alkaline; the soil's acid buffering is spent.** Consistency matters more than the number. |
| Temperature | 22-24°C | Neos tolerate 18-25°C; aim mid-range |

## Measurements

Full append-only log: [`data/measurements.csv`](../data/measurements.csv)
(`date,tds_ppm,gh,kh,ph,temp_c,notes`). New reading → append a CSV row,
then refresh the latest-reading line below.

**Latest**: 2026-06-25 — **TDS 394**, no water change since 2026-06-19 (360).
+34 ppm in 6 days from evaporation top-offs + food — normal between-change
climb; above the ~290-330 home, next small (10-15%) change pulls it back.
**⚠ GH still VOID (method error)**:
both tank ("2", 2026-06-13) and tap ("0", 2026-06-15) were stopped at the
first green flash, not the held endpoint — real GH higher, unknown, **retest
needed** (kit reagent also dead — see `pending.md`). This suspends the
GH-dependent story (low GH / dosing-only-lever / soil-stripping / RO reframe
/ nerite calcium-starvation). **Solid numbers:** TDS — tap 274, tank
494→400(43% change 06-15)→462(+1g GH dose 06-16)→360(large change 06-19)→**394**(2026-06-25, drift).
KH — tank 11, tap 7. pH 7.5. NH3 ~0 on canister-solo (Dennerle out
2026-06-14). NO2/NO3 0 (2026-06-13). Check whether KH was read the same
flawed way.

_Calibration: to trust absolute temp, dunk the thermometer in well-stirred
ice water (= 0°C exactly) and note the offset; subtract it from tank
readings._

## Remineralisation

- **GH-only** booster (APT Sky — Ca/Mg, leaves KH/pH alone), **not**
  GH/KH+ — KH is already 11. **Dosing is the only way to add calcium** —
  tap is GH 0, so water changes can't raise GH (they dilute it; re-dose
  after a change). Raise *slowly* (babies present; sudden hardness swings
  cause bad molts), and aim the **low end (GH ~4-5)** for now since dosing
  also nudges TDS up. Note RO wouldn't help here — tap is already GH 0, so
  GH 4-5 is reached by dosing whether on tap or RO; RO only buys lower
  KH/TDS. Rationale + corrected profile: `knowledge.md` ("Water source").
  Product/ETA + dosing method: `pending.md`.
- **APT GH is gypsum-based** (calcium sulfate) — won't fully dissolve in a
  small container (cloudy stock is normal; ~2.4 g/L solubility), but 17L
  dissolves a gram fine over a few hours. **Dose the weighed powder dry into
  the strong outflow current** (away from the carpet) — a slurry settles too
  fast in the jug to dose evenly. First dose 1g on 2026-06-16.

## Water change protocol (current — babies present)

- **Volume**: 10-15% (~2L for ~17L water)
- **Refill**: slow drip / gentle stream over 5-10 min
- **Temperature**: match within 1°C
- **Parameters**: match TDS/GH where possible (mix new water to same
  recipe as tank)
- **Frequency**: light weekly maintenance OK; avoid for 2-3 weeks after
  any new brood release
- **Carpet siphoning**: do not penetrate hairgrass while babies are
  small. Surface siphon only (hover above carpet, stir gently from
  above with chopstick, suck up suspended particles). Always inspect
  siphon output in a clear container for 10 min before disposing —
  catch any accidental shrimplet pickups.

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
