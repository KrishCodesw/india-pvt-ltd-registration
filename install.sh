#!/bin/sh
# india-pvt-ltd-registration installer — usage:
#   curl -fsSL https://raw.githubusercontent.com/KrishCodesw/india-pvt-ltd-registration/main/install.sh | sh
#     → installs to ~/.claude/skills/india-pvt-ltd-registration (all projects)
#   curl -fsSL .../install.sh | sh -s -- --project
#     → installs to ./.claude/skills/india-pvt-ltd-registration (this repo only)
set -e

REPO="${INDIA_PVT_LTD_REPO:-https://raw.githubusercontent.com/KrishCodesw/india-pvt-ltd-registration/main}"

if [ "$1" = "--project" ]; then
  SCOPE=project
  DEST_ROOT="$(pwd)/.claude/skills"
else
  SCOPE=user
  DEST_ROOT="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
fi

DEST="$DEST_ROOT/india-pvt-ltd-registration"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "→ downloading india-pvt-ltd-registration"
curl -fsSL "$REPO/india-pvt-ltd-registration.skill" -o "$TMP/skill.zip"

if command -v unzip >/dev/null 2>&1; then
  unzip -q -o "$TMP/skill.zip" -d "$TMP/x"
elif command -v python3 >/dev/null 2>&1; then
  python3 -c "import zipfile,sys; zipfile.ZipFile(sys.argv[1]).extractall(sys.argv[2])" "$TMP/skill.zip" "$TMP/x"
else
  echo "need unzip or python3 to extract" >&2
  exit 1
fi

mkdir -p "$DEST_ROOT"
rm -rf "$DEST"
cp -R "$TMP/x/india-pvt-ltd-registration" "$DEST"

echo "✓ installed to $DEST ($SCOPE scope)"
echo "  in Claude Code:  /india-pvt-ltd-registration I want to register my company"
echo "  in claude.ai:    Settings → Capabilities → Skills → upload india-pvt-ltd-registration.skill"
