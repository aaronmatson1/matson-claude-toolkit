---
name: token-audit
description: Analyzes recent Claude Code transcripts for token waste — repeat reads, verbose tool calls, undertargeted greps, conversations that should have been delegated. Outputs ranked recommendations to cut spend. Use monthly or when bills spike.
---

# Token Audit

Find where tokens leak. Recommend fixes.

## What it does

1. Scans `~/.claude/projects/` for recent transcripts
2. Identifies high-cost patterns:
   - Same file read >2 times in one session
   - `find /` or unscoped greps returning massive lists
   - Long tool outputs with no follow-up filtering
   - Tasks that hit context limits (forced compaction)
   - Subagent results re-summarized in main context (double cost)
3. Ranks by estimated tokens wasted
4. Recommends config/workflow changes

## Output

```
## Audit: last 30 days, 47 sessions

## Top leaks
1. ~12k tokens/session — repeat reads of large config files
   Fix: add to CLAUDE.md as paste-in reference, or use claude-code memory

2. ~8k tokens/session — `find . -name "*.ts"` returning 2000 lines
   Fix: scope to specific dirs, or use Glob with pattern

3. ~5k tokens/session — full package.json reads when only scripts needed
   Fix: use `jq` or grep for specific keys

## Recommended changes
- Update CLAUDE.md: add a "Quick reference" section with hot files
- Configure permissions: pre-approve common Bash patterns to skip re-prompts
- Use Explore subagent for codebase searches > 3 queries
```

## Hygiene

Re-run after applying changes — measure the delta.
