---
description: Add a fact, decision, gotcha, or pattern to the company brain. Auto-categorizes and updates INDEX.md.
---

# /brain-add

Quickly capture a knowledge entry to the brain.

## Usage

`/brain-add <free-text>`

## Flow

1. Read the input
2. Classify into category: decision | pattern | gotcha | person | system | glossary
3. Propose a title and tags
4. Show preview, ASK to confirm
5. Write to `brain/<category>/<slug>.md` with frontmatter
6. Append entry to `brain/INDEX.md`
7. Link to related entries via `[[name]]` if relevant

## Entry frontmatter

```yaml
---
title: <title>
tags: [tag1, tag2]
added: YYYY-MM-DD
last-verified: YYYY-MM-DD
status: current
---
```

## Example

```
/brain-add when migrating user IDs from int to uuid, run the dual-write phase for at least 2 weeks because cron jobs cache old IDs

→ Category: gotcha
→ Title: "Dual-write 2+ weeks during ID migrations"
→ Tags: [migration, postgres, cron]
→ Saving to brain/gotchas/dual-write-id-migrations.md
→ Updated INDEX.md
```

## Rules

- One concept per entry. If input has two, ask which to capture or split.
- If a similar entry exists, suggest merging rather than duplicating.
- Always set `added` to today's actual date.
