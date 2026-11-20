#!/bin/bash
# Jaromes Lite installer for Mac, by Vansh Bohra.
#   curl -fsSL https://raw.githubusercontent.com/Vanshworkff/jaromes-lite-mac/main/install.sh | bash
# Downloads the newest release for your Mac (Apple silicon or Intel), puts it in Applications and opens it.
# Installed this way, macOS doesn't block it as "downloaded from the internet", so there's no "can't be opened" box.
set -euo pipefail

REPO="Vanshworkff/jaromes-lite-mac"
APP="Jaromes Lite.app"
pink() { printf '\033[38;5;213m%s\033[0m\n' "$1"; }
fail() { printf '\033[31m✗ %s\033[0m\n' "$1" >&2; exit 1; }

[ "$(uname -s)" = Darwin ] || fail "This installer is for Mac. On Windows, see https://github.com/Vanshworkff/jaromes-lite-windows"
case "$(uname -m)" in
  arm64) KIND=apple-silicon ;;
  x86_64) KIND=intel; [ "$(sysctl -in sysctl.proc_translated 2>/dev/null)" = 1 ] && KIND=apple-silicon ;;
  *) fail "Unknown Mac type: $(uname -m)" ;;
esac
MAJOR=$(sw_vers -productVersion | cut -d. -f1)
[ "$MAJOR" -ge 14 ] || { MINOR=$(sw_vers -productVersion | cut -d. -f2); [ "$MAJOR" -eq 13 ] && [ "${MINOR:-0}" -ge 5 ]; } || fail "Jaromes Lite needs macOS 13.5 or newer (this Mac has $(sw_vers -productVersion))."

pink "( ◕‿◕ )  Installing Jaromes Lite for your Mac ($KIND)…"
# The newest version, from the update feed (plain download links: no GitHub API, so no rate limit on shared networks).
LATEST="https://github.com/$REPO/releases/latest/download"
VERSION=$(curl -fsSL --retry 3 "$LATEST/latest.json" | sed -n 's/.*"version": *"\([0-9][0-9.]*\)".*/\1/p' | head -1 || true)
[ -n "$VERSION" ] || fail "Couldn't reach GitHub. Check your internet connection and try again."
URL="$LATEST/Jaromes-Lite_${VERSION}_mac-$KIND.dmg"

TMP=$(mktemp -d)
cleanup() { hdiutil detach -quiet "$TMP/mnt" 2>/dev/null || true; rm -rf "$TMP"; }
trap cleanup EXIT
echo "Downloading version $VERSION…"
curl -fL --retry 3 --progress-bar -o "$TMP/JaromesLite.dmg" "$URL" || fail "The download failed. Try again in a minute."
mkdir "$TMP/mnt"
hdiutil attach -nobrowse -readonly -noautoopen -mountpoint "$TMP/mnt" "$TMP/JaromesLite.dmg" >/dev/null || fail "Couldn't open the downloaded file."

# Applications if we can write there (most Macs), else the Applications folder in your home folder.
DEST=/Applications
[ -w "$DEST" ] || { DEST="$HOME/Applications"; mkdir -p "$DEST"; }
# Close a running copy first (the app keeps running in the menu bar when asked to quit by script).
osascript -e 'quit app "Jaromes Lite"' >/dev/null 2>&1 || true
pkill -f "/$APP/Contents/MacOS/" 2>/dev/null || true
for _ in 1 2 3 4 5 6 7 8 9 10; do pgrep -f "/$APP/Contents/MacOS/" >/dev/null || break; sleep 0.5; done
rm -rf "$DEST/$APP"
ditto "$TMP/mnt/$APP" "$DEST/$APP" || fail "Couldn't copy the app into $DEST."
xattr -dr com.apple.quarantine "$DEST/$APP" 2>/dev/null || true
codesign --verify --deep --strict "$DEST/$APP" 2>/dev/null || fail "The app didn't pass its signature check. Please report this on GitHub."

pink "✨ Jaromes Lite $VERSION is installed in $DEST."
if [ "${JAROMES_NO_LAUNCH:-}" != 1 ]; then
  open "$DEST/$APP"
  echo "Opening it now: look for the pink buddy in the menu bar at the top right, and follow the setup guide."
fi
