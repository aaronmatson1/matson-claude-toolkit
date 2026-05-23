# Brain Index

Portable knowledge base. Travels job-to-job.

## How to use

- `/brain-add <fact>` — capture new entry
- `/brain-search <query>` — find existing entry
- Run [[company-brain-curator]] monthly for hygiene

## Categories

- **decisions/** — non-trivial choices and their rationale
- **patterns/** — reusable approaches I've found work well
- **gotchas/** — non-obvious traps and their workarounds
- **people/** — who owns what (per job — rotate when changing roles)
- **systems/** — architecture maps, integration diagrams
- **glossary.md** — domain vocabulary

## Entries

<!-- Auto-maintained by /brain-add. One line per entry. -->

### Decisions
- [Two-tier toolkit architecture — portable + per-project](decisions/toolkit-architecture-tiers.md) — Why `~/claude-toolkit/` exists separate from per-repo `.claude/`

### Gotchas
- [Personal-Projects CLAUDE.md drift](gotchas/personal-projects-claudemd-drift.md) — 4 documented vs 15+ real projects; fixed 2026-05-22

### Patterns
- [Subagents take effect next session](patterns/agents-take-effect-next-session.md) — Symlinking agents mid-session doesn't refresh subagent_type list
