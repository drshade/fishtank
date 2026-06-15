# Water Parameters

## Targets (Neocaridina, this tank)

| Parameter | Target | Notes |
|---|---|---|
| GH | 6-8 | Ca/Mg. **Measured 2 (2026-06-13) — low; raising slowly toward target with APT Sky (GH-only).** |
| KH | ~11 (don't chase down) | Textbook neo range is 2-4, but this tank measured **11** (2026-06-13) and is stable. Aged Amazonia no longer strips it; tap top-ups accumulate it. Stability > textbook — don't fight it. |
| TDS | tank ~290-330 on tap (150-250 is RO-only) | **Tank measured 494, tap 274 (both 2026-06-15).** 150-250 is unreachable on tap (274 floor) — that figure assumes RO. On tap the realistic home is ~290-330 (tap + modest GH dose); small water changes trend the 494 toward 274. Mostly carbonate (KH 11 ≈ 195 ppm) + Na, not Ca. Don't crash it (babies; stability). Decision tap-vs-RO pending — see `knowledge.md`. |
| pH | Stable > exact | **Measured 7.5 (2026-06-13) — alkaline; the soil's acid buffering is spent.** Consistency matters more than the number. |
| Temperature | 22-24°C | Neos tolerate 18-25°C; aim mid-range |

## Measurements

Full append-only log: [`data/measurements.csv`](../data/measurements.csv)
(`date,tds_ppm,gh,kh,ph,temp_c,notes`). New reading → append a CSV row,
then refresh the latest-reading line below.

**Latest**: 2026-06-15 — **TDS: tank 494, tap 274** (first readings, XLUX
pen). Tap is the floor, so 150-250 is RO-only; realistic tap home ~290-330
(see TDS target note). The 494 is ~220 ppm of removable in-tank
concentration above tap. Also NH3 spot-check ~0 (faint yellow, no green),
first reading on canister-solo after the Dennerle was pulled 2026-06-14;
substrate holding the biofilter (continue daily through ~2026-06-18). Full
panel 2026-06-13 — GH 2, KH 11, pH 7.5; NH3/NO2/NO3 all 0; the hardness
panel overturned the soft-water assumption: calcium-poor but carbonate-rich
and alkaline (see `knowledge.md` "Water source").

_Calibration: to trust absolute temp, dunk the thermometer in well-stirred
ice water (= 0°C exactly) and note the offset; subtract it from tank
readings._

## Remineralisation

- **GH-only** booster (APT Sky — Ca/Mg, leaves KH/pH alone), **not**
  GH/KH+ — KH is already 11. Raise GH *slowly* (babies present; sudden
  hardness swings cause bad molts). **TDS 494 (2026-06-15) tempers the
  target: dosing adds TDS, already 2× over — aim the low end (GH ~4-5),
  not 6, for now.** Full GH 6-8 is better reached later via RO-cut (drops
  TDS and lets GH/KH be set independently). Rationale and corrected water
  profile: `knowledge.md` ("Water source"). Product/ETA: `pending.md`.

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
