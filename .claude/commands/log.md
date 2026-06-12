---
description: Log a tank event — journal entry + memory updates + commit
argument-hint: <what happened>
---

Log this for today: $ARGUMENTS

1. Read all of `memory/` and the latest journal week, if you haven't
   already this session.
2. Today = `date +%F`; week folder = `journal/$(date +%G-W%V)/` (create
   if missing). Add a `##` section to today's file (create if missing),
   following the structure in `journal/README.md`.
3. Decide which `memory/` files change using the "When to write" table
   in `AGENTS.md`. One fact, one home — update the fact's home file,
   don't restate it elsewhere.
4. Cross-reference every memory update at the end of the journal
   section: `→ updated memory/<file>.md (<section>)`.
5. If photos were attached, process and save them per the photo
   convention in `journal/README.md` (auto-orient, strip EXIF, ≤1600px,
   JPEG q82), and reference them inline from the entry.
6. Commit — short imperative summary line — and push.

If the event changes a settled rule in `knowledge.md`, update the rule
and call that out explicitly in your reply.
