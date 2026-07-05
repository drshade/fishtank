#!/usr/bin/env bash
#
# grab-frame.sh — pull a fresh still from the tankspy Pi camera over SSH.
#
# Purpose (for now): aiming/positioning the camera, checking image quality,
# and dialling in focus. Later this gets superseded by proper on-Pi capture
# wired to triggers/cron (see memory/pending.md "Pi = camera only").
#
# Usage:
#   tools/grab-frame.sh                 # autofocus frame -> tools/frames/<timestamp>.jpg, printed inline (kitty)
#   tools/grab-frame.sh -q              # quick lower-res frame (faster; good for rapid aiming)
#   tools/grab-frame.sh -L 6            # MANUAL focus at 6 dioptres (repeatable; use for the fixed install)
#   tools/grab-frame.sh --sweep         # focus sweep montage: many lens positions in one grid, to pick the sharpest
#   tools/grab-frame.sh --sweep "0 4 6 8"   # custom sweep values (dioptres)
#   tools/grab-frame.sh -o shot.jpg     # write to a specific path
#   tools/grab-frame.sh -n              # don't print the image inline
#   tools/grab-frame.sh -- --hflip --vflip   # pass extra args straight to rpicam-still
#
# Focus notes (Camera Module 3): --lens-position is in dioptres = 1/metres.
#   0 = infinity, ~6 ≈ 16cm, ~20 = its 5cm minimum. For a fixed daily photo
#   prefer manual focus (-L) over autofocus so every frame is identical.
#
# Env:
#   TANKSPY_HOST   ssh host/alias (default: tankspy)
#
set -euo pipefail

HOST="${TANKSPY_HOST:-tankspy}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FRAMES_DIR="$SCRIPT_DIR/frames"
SWEEP_DEFAULT="0 3 5 7 9 11 14"

QUICK=0
OPEN=1
OUT=""
LENS=""          # empty => autofocus-on-capture; set => manual focus
SWEEP=0
SWEEP_VALS=""
EXTRA=()

while [[ $# -gt 0 ]]; do
  case "$1" in
    -q|--quick) QUICK=1; shift ;;
    -n|--no-open) OPEN=0; shift ;;
    -o|--out) OUT="$2"; shift 2 ;;
    -L|--lens) LENS="$2"; shift 2 ;;
    --sweep) SWEEP=1; shift
             # optional non-flag argument = custom list of dioptre values
             if [[ $# -gt 0 && "$1" != -* ]]; then SWEEP_VALS="$1"; shift; fi ;;
    -h|--help) sed -n '2,30p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'; exit 0 ;;
    --) shift; EXTRA=("$@"); break ;;
    *) echo "unknown arg: $1 (see -h)" >&2; exit 2 ;;
  esac
done

# Print an image inline in the terminal (kitty). Non-fatal if no TTY/kitten.
show() {
  [[ "$OPEN" == 1 ]] || return 0
  if command -v kitten >/dev/null 2>&1; then kitten icat "$1" || true
  elif command -v kitty >/dev/null 2>&1; then kitty +kitten icat "$1" || true
  else echo "(kitten not found; skipping inline preview)" >&2; fi
}

# Build the focus-related rpicam-still args for a given lens value ("" => AF).
focus_opts() {
  if [[ -n "$1" ]]; then echo "--autofocus-mode manual --lens-position $1"
  else echo "--autofocus-on-capture"; fi
}

RES_OPTS=""
[[ "$QUICK" == 1 || "$SWEEP" == 1 ]] && RES_OPTS="--width 2304 --height 1296"

# ---- Focus sweep: capture many lens positions, montage into one grid --------
if [[ "$SWEEP" == 1 ]]; then
  command -v montage >/dev/null 2>&1 || { echo "sweep needs imagemagick 'montage'" >&2; exit 1; }
  [[ -n "$SWEEP_VALS" ]] || SWEEP_VALS="$SWEEP_DEFAULT"
  mkdir -p "$FRAMES_DIR"
  TS="$(date +%Y-%m-%d_%H%M%S)"
  WORK="$(mktemp -d)"; trap 'rm -rf "$WORK"' EXIT

  echo "focus sweep on $HOST: $SWEEP_VALS" >&2
  # Capture every value on the Pi in one ssh round-trip.
  REMOTE_CMD=""
  for lp in $SWEEP_VALS; do
    REMOTE_CMD+="rpicam-still -n --immediate $RES_OPTS $(focus_opts "$lp") -o /tmp/sweep_$lp.jpg >/dev/null 2>&1; "
  done
  ssh "$HOST" "$REMOTE_CMD echo done" >/dev/null 2>&1

  TILES=()
  for lp in $SWEEP_VALS; do
    scp -q "$HOST:/tmp/sweep_$lp.jpg" "$WORK/raw_$lp.jpg"
    ssh "$HOST" "rm -f /tmp/sweep_$lp.jpg" >/dev/null 2>&1 || true
    magick "$WORK/raw_$lp.jpg" -resize 640x -gravity North -background black \
      -splice 0x28 -pointsize 22 -fill yellow -annotate +0+2 "lens $lp" \
      "$WORK/tile_$lp.jpg"
    TILES+=("$WORK/tile_$lp.jpg")
  done

  OUT="${OUT:-$FRAMES_DIR/sweep_$TS.jpg}"
  montage "${TILES[@]}" -tile 2x -geometry +4+4 -background '#111' "$OUT"
  echo "saved sweep: $OUT" >&2
  show "$OUT"
  echo "$OUT"
  exit 0
fi

# ---- Single frame -----------------------------------------------------------
# shellcheck disable=SC2206  # word-splitting focus_opts/RES_OPTS is intended
REMOTE_OPTS=(-n --immediate $(focus_opts "$LENS") $RES_OPTS "${EXTRA[@]}")

if [[ -z "$OUT" ]]; then
  mkdir -p "$FRAMES_DIR"
  OUT="$FRAMES_DIR/$(date +%Y-%m-%d_%H%M%S).jpg"
fi

REMOTE_TMP="/tmp/tankspy-grab-$$.jpg"
echo "grabbing frame from $HOST${LENS:+ (manual focus $LENS)} ..." >&2
# shellcheck disable=SC2029  # intentional client-side expansion of opts
ssh "$HOST" "rpicam-still ${REMOTE_OPTS[*]} -o '$REMOTE_TMP'" >/dev/null 2>&1
scp -q "$HOST:$REMOTE_TMP" "$OUT"
ssh "$HOST" "rm -f '$REMOTE_TMP'" >/dev/null 2>&1 || true

echo "saved: $OUT ($(du -h "$OUT" | cut -f1))" >&2
show "$OUT"
echo "$OUT"
