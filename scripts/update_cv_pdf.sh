#!/usr/bin/env bash
# Copy your latest Resume PDF into the site so the Welcome page and CV page stay in sync.
# Usage: ./scripts/update_cv_pdf.sh [path/to/Resume.pdf]

set -euo pipefail

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="${1:-$HOME/Downloads/Resume.pdf}"
DEST="$BASE_DIR/files/cv.pdf"

if [[ ! -f "$SRC" ]]; then
  echo "Error: CV PDF not found at $SRC" >&2
  exit 1
fi

cp "$SRC" "$DEST"
echo "Updated $DEST from $SRC"
