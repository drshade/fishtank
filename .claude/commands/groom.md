---
description: Consistency sweep — find and fix drift across memory/, pending, README
---

Run a consistency sweep. Read all of `memory/`, `README.md`, and the
last 3 journal weeks, then check:

1. **Cross-file drift** — the same fact stated in two places, possibly
   differently. Pick the fact's natural home (see "One fact, one home"
   in `AGENTS.md`), keep it there, replace other statements with a
   pointer.
2. **Stale pending items** — completed or overtaken items in
   `pending.md` → delete (the journal records completions). Date-gated
   items whose dates have passed (`date +%F`) → resolve or update.
3. **Dangling references** — links to files or sections that don't
   exist.
4. **Missing highlights** — any wrapped ISO week with journal entries
   but no `README.md` Highlights entry → add it (newest first).
5. **Stale tenses** — notes referring to past events as if upcoming
   ("on return from trip", "once X arrives" when it has).
6. **Photo hygiene** — images >500KB in `journal/` → recompress per the
   convention in `journal/README.md`.

Fix what you find, report what changed and why, commit as
`groom: <summary>`.
