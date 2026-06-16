# Water Parameters

## Targets (Neocaridina, this tank)

| Parameter | Target | Notes |
|---|---|---|
| GH | low end (~4-5), dosed | Ca/Mg. Tank **2** (2026-06-13); **tap is GH 0** (2026-06-15) → low GH is inherited from the source, not soil/consumption. **Water changes can't raise GH (they dilute it) — dosing is the only lever.** Needed for molts + nerite shells. |
| KH | ~7-11 (don't chase) | Tank measured **11** (2026-06-13); **tap KH 7** (2026-06-15). Tank's 11 is tap's 7 concentrated by evaporation. Regular tap changes drift it toward 7 (closer to textbook) on their own — bonus, not a goal. |
| TDS | tank ~290-330 on tap (150-250 is RO-only) | **Tank measured 494, tap 274 (both 2026-06-15).** 150-250 is unreachable on tap (274 floor) — that figure assumes RO. On tap the realistic home is ~290-330 (tap + modest GH dose); small water changes trend the 494 toward 274. Mostly carbonate (KH 11 ≈ 195 ppm) + Na, not Ca. Don't crash it (babies; stability). Decision tap-vs-RO pending — see `knowledge.md`. |
| pH | Stable > exact | **Measured 7.5 (2026-06-13) — alkaline; the soil's acid buffering is spent.** Consistency matters more than the number. |
| Temperature | 22-24°C | Neos tolerate 18-25°C; aim mid-range |

## Measurements

Full append-only log: [`data/measurements.csv`](../data/measurements.csv)
(`date,tds_ppm,gh,kh,ph,temp_c,notes`). New reading → append a CSV row,
then refresh the latest-reading line below.

**Latest**: 2026-06-15 — **tap tested: GH 0, KH 7, TDS 274.** This corrects
the picture: low tank GH is inherited from GH-0 tap (not soil-stripping —
that inference was wrong); tank KH 11 / TDS 494 are the tap's 7 / 274
concentrated by evaporation. So water changes *dilute* GH (the ~43% change
today pulled tank GH ~2 → ~1) — **dosing is the only way to add calcium.**
Tank TDS **400** after that change (was 494). NH3 spot-check ~0 (faint
yellow) — first on canister-solo (Dennerle out 2026-06-14), substrate
holding (continue daily ~through 2026-06-18). Full tank panel 2026-06-13 —
GH 2, KH 11, pH 7.5, TDS 494; NH3/NO2/NO3 all 0. RO would only lower KH/TDS,
not GH (already 0 from tap) — see `knowledge.md` "Water source".

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
