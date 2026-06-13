# Water Parameters

## Targets (Neocaridina, this tank)

| Parameter | Target | Notes |
|---|---|---|
| GH | 6-8 | Ca/Mg. **Measured 2 (2026-06-13) — low; raising slowly toward target with APT Sky (GH-only).** |
| KH | ~11 (don't chase down) | Textbook neo range is 2-4, but this tank measured **11** (2026-06-13) and is stable. Aged Amazonia no longer strips it; tap top-ups accumulate it. Stability > textbook — don't fight it. |
| TDS | 150-250 ppm | Total dissolved solids (no pen yet) |
| pH | Stable > exact | **Measured 7.5 (2026-06-13) — alkaline; the soil's acid buffering is spent.** Consistency matters more than the number. |
| Temperature | 22-24°C | Neos tolerate 18-25°C; aim mid-range |

## Measurements

Full append-only log: [`data/measurements.csv`](../data/measurements.csv)
(`date,tds_ppm,gh,kh,ph,temp_c,notes`). New reading → append a CSV row,
then refresh the latest-reading line below.

**Latest**: 2026-06-13 — GH 2, KH 11, pH 7.5; NH3/NO2/NO3 all 0. The
hardness panel overturned the soft-water assumption: calcium-poor but
carbonate-rich and alkaline (see `knowledge.md` "Water source"). No TDS
yet (pen not arrived).

_Calibration: to trust absolute temp, dunk the thermometer in well-stirred
ice water (= 0°C exactly) and note the offset; subtract it from tank
readings._

## Remineralisation

- **GH-only** booster (APT Sky — Ca/Mg, leaves KH/pH alone), **not**
  GH/KH+ — KH is already 11. Raise GH 2 → ~6 *slowly* (babies present;
  sudden hardness swings cause bad molts). Rationale and the corrected
  water profile: `knowledge.md` ("Water source"). Product/ETA:
  `pending.md`.

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
