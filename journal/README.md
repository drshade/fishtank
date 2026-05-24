# Journal

Append-only history of the tank. The journal is the source of truth for
*what happened*; `memory/` is the source of truth for *what's true now*.

## Layout

```
journal/
├── 2026-W20/                    # ISO week folder (Mon-Sun)
│   ├── 2026-05-17.md            # one file per day events happened
│   └── 2026-05-17-tank.png      # photos co-located with their note
└── 2026-W21/
    ├── 2026-05-22.md
    └── 2026-05-22-detritus.png
```

- **Week folders**: ISO week format `YYYY-Www` (e.g. `2026-W21` = May 18-24).
  Get it from `date +%G-W%V`.
- **Daily files**: `YYYY-MM-DD.md`. Multiple events from the same day go in
  one file. Days with nothing to log get no file — gaps are normal.
- **Photos**: prefixed with the same date plus a short slug, e.g.
  `2026-05-23-as25-bubbles.png`. Reference inline from the note with
  `![alt](2026-05-23-as25-bubbles.png)`.

## When to write a journal entry

Any of:
- Observation worth remembering (behaviour, plant change, water clarity)
- Equipment installed / removed / cleaned / failed
- Livestock event (birth, death, new arrival, molt, berried)
- Measurement (TDS, GH, KH, temp, ammonia)
- Decision made (purchase, planned change, ruled-out option) + *why*
- Photo taken
- Near-miss or actual incident

## How a journal entry should be structured

```markdown
# 2026-05-22

## Dawn O2 near-miss
Both adults at the surface pre-dawn. Diagnosed: sluggish filter +
closed lid + dense plant respiration overnight. Tilted outflow to
break surface, removed lid. Adults descended within the hour.

→ updated `memory/knowledge.md` (Aeration decision section)
→ updated `memory/pending.md` (added air pump to shop list)

## First baby spotted
Out grazing in hairgrass mid-afternoon. Confirms brood 1 is alive
and conditions are working.

→ updated `memory/livestock.md`
```

Cross-reference `memory/` updates at the bottom of each section — makes
the projection traceable.

## When to update `memory/` vs journal

| Change type | Journal? | `memory/`? |
|---|---|---|
| One-off observation (saw a baby today) | yes | maybe (if it changes census/state) |
| Decision made / equipment ordered | yes | yes (update `pending.md` and/or `tank.md`) |
| Near-miss / incident | yes | maybe (if it changes a settled care rule, update `knowledge.md`) |
| Measurement | yes | yes (append to `parameters.md`) |
| Photo | yes | no |
| Care rule revised | yes | yes (update `knowledge.md`) |

When in doubt: journal always, snapshot if the change is still-true.
