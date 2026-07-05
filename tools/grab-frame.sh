#!/usr/bin/env bash
#
# grab-frame.sh — pull a fresh still from the tankspy Pi camera over SSH.
#
# Purpose (for now): aiming/positioning the camera and checking image
# quality. Later this gets superseded by proper on-Pi capture wired to
# triggers/cron (see memory/pending.md "Pi = camera only").
#
# Usage:
#   tools/grab-frame.sh                 # full-res frame -> tools/frames/<timestamp>.jpg, then opens it
#   tools/grab-frame.sh -q              # quick lower-res frame (faster; good for rapid aiming)
#   tools/grab-frame.sh -o shot.jpg     # write to a specific path
#   tools/grab-frame.sh -n              # don't open the viewer
#   tools/grab-frame.sh -- --hflip --vflip   # pass extra args straight to rpicam-still
#
# Env:
#   TANKSPY_HOST   ssh host/alias (default: tankspy)
#
set -euo pipefail

HOST="${TANKSPY_HOST:-tankspy}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FRAMES_DIR="$SCRIPT_DIR/frames"

QUICK=0
OPEN=1
OUT=""
EXTRA=()

while [[ $# -gt 0 ]]; do
  case "$1" in
    -q|--quick) QUICK=1; shift ;;
    -n|--no-open) OPEN=0; shift ;;
    -o|--out) OUT="$2"; shift 2 ;;
    -h|--help) sed -n '2,20p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'; exit 0 ;;
    --) shift; EXTRA=("$@"); break ;;
    *) echo "unknown arg: $1 (see -h)" >&2; exit 2 ;;
  esac
done

# rpicam-still options. Autofocus each shot; no preview (headless Pi).
REMOTE_OPTS=(-n --autofocus-on-capture --immediate)
if [[ "$QUICK" == 1 ]]; then
  REMOTE_OPTS+=(--width 2304 --height 1296)   # ~half-res, faster sensor mode
fi
REMOTE_OPTS+=("${EXTRA[@]}")

# Default output: timestamped file under tools/frames/
if [[ -z "$OUT" ]]; then
  mkdir -p "$FRAMES_DIR"
  OUT="$FRAMES_DIR/$(date +%Y-%m-%d_%H%M%S).jpg"
fi

REMOTE_TMP="/tmp/tankspy-grab-$$.jpg"

echo "grabbing frame from $HOST ..." >&2
# shellcheck disable=SC2029  # intentional client-side expansion of opts
ssh "$HOST" "rpicam-still ${REMOTE_OPTS[*]} -o '$REMOTE_TMP'" >/dev/null 2>&1
scp -q "$HOST:$REMOTE_TMP" "$OUT"
ssh "$HOST" "rm -f '$REMOTE_TMP'" >/dev/null 2>&1 || true

SIZE="$(du -h "$OUT" | cut -f1)"
echo "saved: $OUT ($SIZE)" >&2

if [[ "$OPEN" == 1 ]] && command -v xdg-open >/dev/null 2>&1; then
  xdg-open "$OUT" >/dev/null 2>&1 &
fi

echo "$OUT"
