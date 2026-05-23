---
description: Lint, typecheck, test, commit, push, open PR — full ship flow with safety gates.
---

# /ship

End-to-end ship flow. Stops at first failure. No `--no-verify`.

## Steps

1. `git status` — confirm there are changes
2. Run repo's lint command (detect from package.json scripts or Makefile)
3. Run repo's typecheck (if applicable)
4. Run repo's test suite
5. If all green: stage changes (specific files, not `-A`)
6. Generate commit message — Conventional Commits style, terse
7. Show diff + proposed message, ASK before committing
8. After commit: ask before pushing
9. After push: offer to open PR via `gh pr create`

## Safety rules

- NEVER `git add -A` — list files explicitly
- NEVER `--no-verify` or `--no-gpg-sign`
- NEVER force-push without explicit user confirmation per push
- If pre-commit hook fails: fix the issue, create NEW commit (don't amend)
- If on main/master: refuse to push, suggest creating a branch first

## Output

```
✓ lint passed
✓ typecheck passed
✓ tests passed (42 passed, 0 failed)
Files to commit:
  M src/auth/middleware.ts
  M src/auth/middleware.test.ts
Proposed message:
  fix(auth): tighten token expiry check (<= → <)

Proceed? [y/N]
```
