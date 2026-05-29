#!/usr/bin/env bash
# Regenerate the three CV PDFs from their HTML sources.
# Usage: ./build.sh
set -euo pipefail

cd "$(dirname "$0")"

CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

if [[ ! -x "$CHROME" ]]; then
  echo "Chrome not found at: $CHROME" >&2
  exit 1
fi

# source-html  ->  output-pdf
declare -a PAGES=(
  "es.html:Pedro_Rojas_CV_ES.pdf"
  "en.html:Pedro_Rojas_CV_EN.pdf"
  "zh.html:Pedro_Rojas_CV_ZH.pdf"
)

# Temp profile so this works even when Chrome is already open.
PROFILE="$(mktemp -d)"
trap 'rm -rf "$PROFILE"' EXIT

for pair in "${PAGES[@]}"; do
  src="${pair%%:*}"
  out="${pair##*:}"
  echo "→ $src -> $out"
  "$CHROME" \
    --headless=new --disable-gpu --no-pdf-header-footer \
    --user-data-dir="$PROFILE" \
    --print-to-pdf="$out" \
    "file://$PWD/$src" 2>/dev/null
done

echo "Done. PDFs regenerated:"
ls -lh Pedro_Rojas_CV_*.pdf
echo
echo "Next: git add -A && git commit -m 'update cv' && git push"
echo "GitHub Pages refreshes in ~30s."
