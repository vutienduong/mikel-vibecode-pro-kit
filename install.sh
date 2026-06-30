#!/usr/bin/env bash
set -euo pipefail

KIT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${1:-$(pwd)}"
TARGET_DIR="$(cd "$TARGET_DIR" && pwd)"
STAMP="$(date +%Y%m%d-%H%M%S)"
BACKUP_DIR="$TARGET_DIR/.mikel-vibecode-backup/$STAMP"

if [ "$TARGET_DIR" = "$KIT_DIR" ]; then
  echo "Refusing to install into the kit repository itself."
  echo "Usage: ./install.sh /path/to/target-project"
  exit 1
fi

copy_path() {
  local src="$1"
  local dst="$2"
  if [ -e "$dst" ] || [ -L "$dst" ]; then
    mkdir -p "$BACKUP_DIR/$(dirname "$src")"
    cp -R "$dst" "$BACKUP_DIR/$src"
  fi
  mkdir -p "$(dirname "$dst")"
  rm -rf "$dst"
  cp -R "$KIT_DIR/$src" "$dst"
}

copy_merge_dir() {
  local src="$1"
  local dst="$2"
  mkdir -p "$dst"
  (cd "$KIT_DIR/$src" && find . -type f | sort) | while read -r rel; do
    rel="${rel#./}"
    local src_file="$KIT_DIR/$src/$rel"
    local dst_file="$dst/$rel"
    if [ -e "$dst_file" ]; then
      mkdir -p "$BACKUP_DIR/$src/$(dirname "$rel")"
      cp "$dst_file" "$BACKUP_DIR/$src/$rel"
    fi
    mkdir -p "$(dirname "$dst_file")"
    cp "$src_file" "$dst_file"
  done
}

copy_path "AGENTS.md" "$TARGET_DIR/AGENTS.md"
copy_path ".codex" "$TARGET_DIR/.codex"
copy_path ".agents" "$TARGET_DIR/.agents"
copy_merge_dir "process/development-protocols" "$TARGET_DIR/process/development-protocols"
copy_merge_dir "process/_templates" "$TARGET_DIR/process/_templates"

mkdir -p "$TARGET_DIR/process/context" "$TARGET_DIR/process/plans/active" "$TARGET_DIR/process/plans/completed"
if [ ! -e "$TARGET_DIR/process/context/all-context.md" ]; then
  cp "$KIT_DIR/process/context/all-context.md" "$TARGET_DIR/process/context/all-context.md"
fi

echo "Mikel Vibecode Pro Kit installed in: $TARGET_DIR"
if [ -d "$BACKUP_DIR" ]; then
  echo "Backups written to: $BACKUP_DIR"
fi
echo "Next: open Codex in the target project and say: Use \$mv-setup to prepare this repo."
