#!/usr/bin/env bash
# Matson Claude Toolkit installer
# Symlinks toolkit contents into ~/.claude/ (idempotent)

set -euo pipefail

TOOLKIT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_DIR="$HOME/.claude"

mkdir -p "$CLAUDE_DIR"

link_dir() {
  local name="$1"
  local src="$TOOLKIT_DIR/$name"
  local dest="$CLAUDE_DIR/$name"

  if [ ! -d "$src" ]; then
    echo "skip $name (not in toolkit)"
    return
  fi

  if [ -L "$dest" ]; then
    echo "relink $name"
    rm "$dest"
  elif [ -d "$dest" ]; then
    echo "WARN: $dest exists as real dir. Backing up to $dest.backup-$(date +%s)"
    mv "$dest" "$dest.backup-$(date +%s)"
  fi

  ln -s "$src" "$dest"
  echo "linked $name -> $src"
}

# Per-subdir symlinks (preserves any project-only files in ~/.claude/)
for sub in agents skills commands output-styles hooks; do
  mkdir -p "$CLAUDE_DIR/$sub"
  for item in "$TOOLKIT_DIR/$sub"/*; do
    [ -e "$item" ] || continue
    name="$(basename "$item")"
    target="$CLAUDE_DIR/$sub/$name"
    if [ -L "$target" ]; then rm "$target"; fi
    if [ -e "$target" ] && [ ! -L "$target" ]; then
      echo "WARN: $target exists. Skipping (rename to keep, delete to overwrite)."
      continue
    fi
    ln -s "$item" "$target"
    echo "linked $sub/$name"
  done
done

echo ""
echo "Done. Toolkit linked to $CLAUDE_DIR"
echo "Re-run anytime — idempotent."
