# fishtank

Personal knowledge base for Tom's planted Neocaridina shrimp nano tank.

Used by Claude (or any LLM agent) to give grounded, tank-specific advice and
to keep the tank's state up to date over time. The point is that next time
you start a conversation about the tank, the agent has full continuity:
hardware, livestock census, what was ordered, what was decided and *why*,
and what to watch for.

## Structure

- `AGENTS.md` — instructions for any agent working in this repo
- `memory/` — current tank state, by topic:
  - `tank.md` — hardware, equipment, layout
  - `livestock.md` — shrimp/snail census, breeding history
  - `parameters.md` — water parameter targets and measurements
  - `timeline.md` — log of notable events (most recent first)
  - `pending.md` — orders in flight, todos, planned changes
  - `knowledge.md` — care notes / learnings specific to this tank

## How to use

Open Claude Code in this directory. The agent reads `AGENTS.md` and the
memory files when answering questions, and updates them when anything
changes. Just talk to it normally:

- "Brood 2 hatched today"
- "TDS reading 180"
- "Filter arrived, walk me through install"
- "Saw both adults at the surface this morning"

The agent should append to `memory/timeline.md` and edit the relevant
topic file every time.
