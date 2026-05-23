---
title: Two-tier toolkit architecture — portable + per-project
tags: [agents, toolkit, architecture, claude-code]
added: 2026-05-22
last-verified: 2026-05-22
status: current
---

## What

Claude Code agent setup is split into two tiers:

- **Tier 1 — Portable kit** at `~/claude-toolkit/` (git repo, GitHub backed)
- **Tier 2 — Per-project `.claude/`** lives in each repo

Toolkit installer symlinks contents into `~/.claude/` so generic agents (frontend, backend, meta, knowledge, ops) follow Aaron job-to-job. Project-specific agents (Sith for Gabb) stay in the repo `.claude/`.

## Why it matters

- Job-portability: new laptop or new role → clone toolkit, run installer, all 19 agents + skills + commands instantly available
- Hiring pitch: "Hire me, get my trained agent suite" — toolkit is a portfolio artifact
- Clean separation prevents brand-specific agents (Sith) leaking into other contexts

## Details

- Repo: https://github.com/aaronmatson1/matson-claude-toolkit (private)
- Install: `~/claude-toolkit/install.sh` — idempotent, won't overwrite existing files
- Sith agents (vader, maul, ventress, windu, obi-wan, palpatine, luke) stay as direct files in `~/.claude/agents/`, alongside symlinked toolkit subfolders
- Hooks wired into `~/.claude/settings.json` (SessionStart banner, PostToolUse `git add -A` warning) — additive to existing pixel-agents hooks

## Related

- [[onboarding-builder-agent-output]]
- [[brain-as-portable-knowledge]]
