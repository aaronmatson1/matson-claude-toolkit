# Matson Claude Toolkit

Portable Claude Code agent suite. Travels job-to-job. Plug into any `~/.claude/` setup via `install.sh`.

## What you get

- **20+ specialist agents** covering frontend, backend, docs, ops, meta-agents
- **Custom skills** for token efficiency, knowledge capture, plan stress-testing
- **Slash commands** for shipping, brain management, handoffs
- **Hooks** that enforce conventions automatically
- **Output styles** for terse and executive communication

## Structure

```
agents/
  frontend/    # UI, components, a11y, design systems
  backend/     # APIs, schemas, perf, integration
  meta/        # agents about agents — token, routing, context
  knowledge/   # docs, ADRs, company brain, onboarding
  ops/         # PR review, CI debug, release notes
skills/        # invokable workflows (caveman, grill-me, etc.)
commands/      # /ship, /brain-add, /handoff
output-styles/ # terse, exec-summary
hooks/         # SessionStart, PostToolUse
brain/         # company knowledge base — markdown KB
```

## Install

```bash
git clone <repo> ~/claude-toolkit
cd ~/claude-toolkit
./install.sh
```

Symlinks contents into `~/.claude/`. Idempotent — safe to re-run.

## Per-job usage

1. Clone toolkit on new machine
2. Run installer
3. Project-specific agents go in repo `.claude/agents/` (not here)
4. Brand-flavored variants (e.g. Sith for Gabb) stay in project repos

## Roster

### Frontend
- `component-architect` — Vue/React structure, prop design
- `a11y-auditor` — WCAG, screen reader semantics
- `css-optimizer` — token consistency, dead style detection
- `design-system-curator` — drift detection across components

### Backend
- `api-designer` — REST/GraphQL contracts, OpenAPI
- `db-schema-architect` — migrations, indexing, query plans
- `perf-profiler` — N+1 detection, slow query analysis
- `integration-tester` — contract tests, mocks vs. real

### Meta (agents about agents)
- `token-budgeter` — pre-flight token estimates
- `subagent-router` — picks right subagent for task
- `context-pruner` — flags stale context bloat
- `prompt-distiller` — rewrites verbose prompts

### Knowledge
- `doc-writer` — extracts docs from workflow observation
- `adr-scribe` — captures decisions as ADRs
- `company-brain-curator` — manages `/brain/` markdown KB
- `onboarding-builder` — generates ONBOARDING.md

### Ops
- `pr-reviewer` — diff review, regression scan
- `ci-debugger` — pipeline failure triage
- `release-notes` — changelog generation

## License

Personal use. Hiring inquiries: aaron.matson@gabb.com
