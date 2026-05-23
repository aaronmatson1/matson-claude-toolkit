---
title: New Claude Code subagents take effect at next session start
tags: [claude-code, agents, gotcha-adjacent]
added: 2026-05-22
last-verified: 2026-05-22
status: current
---

## What

Claude Code resolves the list of available `subagent_type` values when a session starts. Adding agent files to `~/.claude/agents/` (or symlinking them in) mid-session does NOT make them invocable as subagents in the current session.

## Why it matters

When testing a new agent immediately after installing, you can't call it via the Agent tool's `subagent_type` parameter — must wait until next session restart. Workaround: play the agent's role manually in main context, or pass the agent's prompt body inline to a `general-purpose` subagent.

## Details

- Built-in subagents (general-purpose, Explore, Plan, statusline-setup, plus marketplace/team-defined ones) are listed in the session prompt at start
- User-defined agents in `~/.claude/agents/*.md` are merged into that list at session start
- Symlinking new agent folders during a session doesn't refresh the list — Claude Code doesn't re-scan
- Per-project `.claude/agents/` files in the repo also get loaded at session start

## How to apply

After installing a new toolkit or adding a new agent file:
1. Either restart Claude Code to pick up the new subagent
2. Or test by running the agent's prompt manually in current session

## Related

- [[toolkit-architecture-tiers]]
