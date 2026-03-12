#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

[[ -f index.html ]] || { echo "Missing index.html"; exit 1; }
[[ -f shadow-circuit-game.html ]] || { echo "Missing shadow-circuit-game.html"; exit 1; }
[[ -f README.md ]] || { echo "Missing README.md"; exit 1; }

cmp -s index.html shadow-circuit-game.html || {
  echo "Bundled file is out of sync with index.html";
  exit 1;
}

rg -q "Shadow Circuit: Classroom Override" index.html
rg -q "Show Raw HTML" index.html

echo "All checks passed."
