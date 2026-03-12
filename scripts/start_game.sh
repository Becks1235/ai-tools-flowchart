#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-3000}"
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

cd "$ROOT_DIR"

echo "Starting Shadow Circuit on http://localhost:${PORT}"
echo "Press Ctrl+C to stop the server."
python3 -m http.server "$PORT"
