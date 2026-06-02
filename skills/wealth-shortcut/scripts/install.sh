#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'USAGE'
Usage:
  install.sh [--dry-run] [--force]

Examples:
  # One-line install (from GitHub)
  bash <(curl -fsSL https://raw.githubusercontent.com/qishuai6/wealth-shortcut/main/skills/wealth-shortcut/scripts/install.sh)

  # From local clone
  bash skills/wealth-shortcut/scripts/install.sh

  # Preview without writing
  bash skills/wealth-shortcut/scripts/install.sh --dry-run

  # Force refresh existing files
  bash skills/wealth-shortcut/scripts/install.sh --force

Notes:
  Installs wealth-shortcut skill to ~/.claude/skills/wealth-shortcut/
  Skill content is copied from skill-template/skills/wealth-shortcut/
USAGE
}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
SKILL_DIR="$(cd "$SCRIPT_DIR/.." && pwd -P)"
REPO_ROOT="$(cd "$SKILL_DIR/../.." && pwd -P)"

FORCE=0
DRY_RUN=0

while [[ $# -gt 0 ]]; do
  case "$1" in
    --force)
      FORCE=1
      shift
      ;;
    --dry-run)
      DRY_RUN=1
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

# Resolve template source
resolve_template_dir() {
  # Try repo root first (when running from a local clone)
  if [[ -d "$REPO_ROOT/skill-template/skills/wealth-shortcut" ]]; then
    echo "$REPO_ROOT/skill-template/skills/wealth-shortcut"
    return 0
  fi

  # Try env override
  if [[ -n "${WEALTH_SHORTCUT_HOME:-}" && -d "$WEALTH_SHORTCUT_HOME/skill-template/skills/wealth-shortcut" ]]; then
    echo "$WEALTH_SHORTCUT_HOME/skill-template/skills/wealth-shortcut"
    return 0
  fi

  return 1
}

TEMPLATE_DIR="$(resolve_template_dir || true)"

# When running via curl (no local clone), download skill-template from GitHub
if [[ -z "$TEMPLATE_DIR" || ! -d "$TEMPLATE_DIR" ]]; then
  GITHUB_RAW="https://raw.githubusercontent.com/qishuai6/wealth-shortcut/main/skill-template/skills/wealth-shortcut"
  FILES=(SKILL.md dca.md fire.md score.md math.md funds.md psychology.md withdraw.md opportunity-cost.md allocation.md)

  echo "==> No local template found, downloading from GitHub..."

  # Create temp dir for downloaded files
  TEMPLATE_DIR="$(mktemp -d)"
  trap 'rm -rf "$TEMPLATE_DIR"' EXIT

  for f in "${FILES[@]}"; do
    if [[ $DRY_RUN -eq 1 ]]; then
      echo "download $GITHUB_RAW/$f -> $TEMPLATE_DIR/$f"
    else
      curl -fsSL "$GITHUB_RAW/$f" -o "$TEMPLATE_DIR/$f" 2>/dev/null || {
        echo "Failed to download $f" >&2
        exit 1
      }
    fi
  done

  echo "==> Download complete"
fi

TARGET_DIR="$HOME/.claude/skills/wealth-shortcut"

echo "==> target: $TARGET_DIR"
echo "==> source: $TEMPLATE_DIR"

# Create target dir
if [[ $DRY_RUN -eq 1 ]]; then
  echo "mkdir -p $TARGET_DIR"
else
  mkdir -p "$TARGET_DIR"
fi

# Copy files
copied=0
skipped=0
for f in "$TEMPLATE_DIR"/*; do
  [[ -f "$f" ]] || continue
  fname="$(basename "$f")"
  dst="$TARGET_DIR/$fname"

  if [[ -e "$dst" && $FORCE -ne 1 ]]; then
    echo "  skip existing: $fname"
    ((skipped++)) || true
    continue
  fi

  if [[ $DRY_RUN -eq 1 ]]; then
    echo "  copy $fname"
  else
    cp "$f" "$dst"
    echo "  installed: $fname"
  fi
  ((copied++)) || true
done

echo ""
echo "==> done"

if [[ $DRY_RUN -eq 1 ]]; then
  echo "Dry run: $copied files would be copied, $skipped skipped"
  echo "Run without --dry-run to install"
else
  echo "Installed: $copied files"
  if [[ $skipped -gt 0 ]]; then
    echo "Skipped:  $skipped files (use --force to refresh)"
  fi
  echo ""
  echo "Usage:"
  echo "  /wealth-shortcut  — Launch the finance advisor"
  echo "  /理财             — Quick trigger"
  echo "  Or just ask: \"每月定投 5000，30 年后有多少？\""
fi
