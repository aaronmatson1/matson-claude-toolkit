#!/usr/bin/env bash
# PostToolUse hook — Matson toolkit
# Stub: extend to enforce conventions after specific tool calls.
# Receives JSON event on stdin; exit 0 to allow, non-zero to block.

# Example: warn on `git add -A`
input=$(cat)
if echo "$input" | grep -q '"command":"git add -A"'; then
  echo "WARN: git add -A is discouraged — list files explicitly" >&2
fi

exit 0
