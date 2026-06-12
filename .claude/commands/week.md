---
description: Wrap an ISO week — add its README Highlights entry
argument-hint: [week, e.g. 2026-W23 — default: latest journal week]
---

Wrap up week $ARGUMENTS (if blank: the most recent `journal/` week
folder that has entries).

1. Read every journal entry in that week's folder.
2. Write (or update) that week's entry at the **top** of the Highlights
   section in `README.md`: 2-4 plain-English sentences, lead with the
   week's headline, friendlier register than the journal.
3. Embed one photo from that week's folder (`width="480"`) if one
   exists; skip the image if the week has no photos.
4. Don't include anything not backed by a journal entry.
5. Commit and push.
