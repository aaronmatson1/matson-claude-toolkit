---
title: Personal-Projects CLAUDE.md historically drifted from real project list
tags: [personal-projects, claudemd, documentation, drift]
added: 2026-05-22
last-verified: 2026-05-22
status: current
---

## What

`~/Documents/Personal-Projects/CLAUDE.md` used to document only 4-5 active projects while the directory held 15+. The 2026-05-22 audit added a full project directory table to fix this.

## Why it matters

Future Claude sessions reading CLAUDE.md were getting a partial view — agents would miss context for `Entrata/`, `Code_Potato/`, `analytics-engine/`, and others. The directory table is now the authoritative status list.

## Details

- `analytics-engine/` has its OWN CLAUDE.md — defer to nested file when working in that subdir
- `Code_Potato/` is a personal fun project Aaron wants to return to (not abandoned)
- `Entrata/` is "done" (completed), distinct from "stale" (abandoned)
- `bingo-dashboard-1/` is legacy — always use `bingo-dashboard/` for active work
- `web-audit-tool/` lives on branch `aaron/Web-Audit-Tool`, not main

## How to avoid recurrence

When adding a new top-level project, update the directory table in CLAUDE.md same commit. Otherwise drift accumulates fast.

## Related

- [[toolkit-architecture-tiers]]
