---
description: Generate a context handoff document — what was done, what's next, where things stand. For ending a session, switching agents, or passing to a teammate.
---

# /handoff

Capture state so the next session (or person) doesn't start cold.

## Flow

1. Scan current conversation context
2. Extract:
   - Goal (what we're trying to accomplish)
   - Completed (what's done)
   - In-progress (what's mid-flight, including blocking issues)
   - Next steps (concrete, ranked)
   - Decisions made (link to ADRs if any)
   - Open questions
   - Files touched (path + brief reason)
3. Write to `HANDOFF.md` in repo root (or specified path)
4. Offer to also post as PR comment, Slack message, or Jira comment

## Output shape

```markdown
# Handoff — YYYY-MM-DD

## Goal
Migrate auth from JWT to session cookies.

## Completed
- [x] New session middleware in src/auth/session.ts
- [x] Login endpoint switched to session
- [x] Tests passing for happy path

## In-progress
- [ ] Logout endpoint — partial, see TODO in src/auth/session.ts:88
- [ ] Migration script for active JWT users — needs decision on grace period

## Next steps
1. Finish logout (~30 min)
2. Decide grace period with security team
3. Roll out migration in shadow mode first

## Decisions
- ADR-0043: Cookie SameSite=Lax (links: ...)
- Skipped CSRF lib — handled by SameSite (consensus with @alice)

## Open questions
- Mobile clients — do they support cookies in webview, or do we need both?

## Files touched
- src/auth/session.ts (new middleware)
- src/auth/login.ts (switched to session)
- src/auth/logout.ts (in-progress)
```

## Rules

- Concrete, not vague. "Next: finish logout" not "next: finish auth work"
- Link to commits/PRs if any exist
- Note any environment state ("server running on :3001 in background")
