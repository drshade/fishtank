# fishtank

Personal knowledge base for Tom's planted Neocaridina shrimp nano tank
in Amsterdam.

Used by Claude (or any LLM agent) to give grounded, tank-specific advice
and to keep the tank's state up to date over time. Next time you start
a conversation about the tank, the agent has full continuity: hardware,
livestock census, what was ordered, what was decided and *why*, and
what to watch for.

## Structure

```
fishtank/
├── AGENTS.md           # instructions for any agent working here
├── memory/             # current state — overwriting edits
│   ├── tank.md         # hardware, equipment, layout
│   ├── livestock.md    # current census, breeding
│   ├── parameters.md   # target ranges + measurement log
│   ├── pending.md      # orders in flight, install plans, todos
│   └── knowledge.md    # settled care decisions and why
└── journal/            # append-only history with photos
    ├── README.md       # convention for entries + photos
    └── YYYY-Www/       # ISO week folders
        ├── YYYY-MM-DD.md
        └── YYYY-MM-DD-slug.png
```

Two-tier model: `memory/` is *what's true now* (snapshot), `journal/` is
*what happened, when* (event log + photos). The journal is the source of
truth for history; the snapshot is a projection.

## How to use

Open Claude Code in this directory. The agent reads `AGENTS.md` plus
`memory/` and the latest journal week automatically. Just say what
happened:

- "Brood 2 hatched today" → journal entry + `livestock.md` update
- "TDS reading 180" → journal entry + `parameters.md` row appended
- "Filter arrived" → journal entry + `pending.md` checkbox ticked + start install
- "Saw both adults at the surface this morning" → journal entry + maybe
  a `knowledge.md` update if the diagnosis changes

Photos: drop them into the conversation, the agent saves them into the
appropriate week folder alongside a note.
