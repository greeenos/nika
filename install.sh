#!/bin/sh
# Installs or updates Nika:  curl -fsSL https://raw.githubusercontent.com/greeenos/nika/main/install.sh | sh
set -e
[ "$(uname -m)" = arm64 ] || { echo "Nika needs a Mac with Apple Silicon." >&2; exit 1; }

T=$(mktemp -d)
trap 'hdiutil detach "$T/mnt" -quiet 2>/dev/null; rm -rf "$T"' EXIT
echo "Downloading Nika…"
curl -fL --progress-bar https://github.com/greeenos/nika/releases/latest/download/Nika.dmg -o "$T/Nika.dmg"
hdiutil attach "$T/Nika.dmg" -nobrowse -readonly -noautoopen -mountpoint "$T/mnt" -quiet 2>/dev/null

osascript -e 'quit app "Nika"' 2>/dev/null || true
for _ in 1 2 3 4 5 6 7 8 9 10; do pgrep -xq Nika || break; sleep 0.3; done
pkill -x Nika 2>/dev/null || true
rm -rf /Applications/Nika.app
ditto "$T/mnt/Nika.app" /Applications/Nika.app
open /Applications/Nika.app
echo "Nika is installed in Applications."
