---
description: Search the company brain by keyword, tag, or category. Returns matching entries with relevance ranking.
---

# /brain-search

Find what you already knew.

## Usage

`/brain-search <query>` — keyword search across all entries
`/brain-search tag:<tag>` — filter by tag
`/brain-search category:<cat>` — filter by category (decisions, patterns, gotchas, etc.)

## Flow

1. Grep across `brain/**/*.md` for query terms
2. Rank by:
   - Title match (highest)
   - Tag match
   - Body match
   - `last-verified` recency (deprioritize stale)
3. Return top 10 with title, category, last-verified, 1-line excerpt
4. If nothing found, suggest related tags or offer to `/brain-add` it

## Output

```
## Results for "migration"

1. [gotcha] Dual-write 2+ weeks during ID migrations
   tags: [migration, postgres, cron] · verified: 2026-04-12
   "...cron jobs cache old IDs, run dual-write for at least 2 weeks..."

2. [pattern] Backfill in batches with NOT VALID FK
   tags: [migration, postgres] · verified: 2026-03-01
   "...add FK with NOT VALID, backfill, then VALIDATE CONSTRAINT..."

3. [decision] ADR-0042: Why we picked Liquibase over Flyway
   tags: [migration, tooling] · verified: 2025-11-08 (STALE — re-verify)
```

## Hygiene flag

If a top result is older than 6 months, flag with "STALE — re-verify" and offer to update.
