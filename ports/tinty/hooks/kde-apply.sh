#!/usr/bin/env bash
# tinty hook: apply the current scheme to KDE Plasma, live.
# Highland schemes use the hand-tuned HighlandMidnight / HighlandMist schemes.
# Other schemes use the KDE file that the tinted-kde template generated.
command -v plasma-apply-colorscheme >/dev/null || exit 0
dir="${XDG_DATA_HOME:-$HOME/.local/share}/color-schemes"; mkdir -p "$dir"
case "$TINTY_SCHEME_SLUG" in
  highland-midnight) plasma-apply-colorscheme HighlandMidnight >/dev/null; exit 0 ;;
  highland-mist)     plasma-apply-colorscheme HighlandMist     >/dev/null; exit 0 ;;
esac
# Plasma ignores a re-apply of the active scheme, so alternate between 2 names.
cur=$(kreadconfig6 --group General --key ColorScheme 2>/dev/null || kreadconfig5 --group General --key ColorScheme 2>/dev/null)
[ "$cur" = "TintyA" ] && name=TintyB || name=TintyA
sed "s/^ColorScheme=.*/ColorScheme=$name/" "$TINTY_THEME_FILE_PATH" > "$dir/$name.colors"
plasma-apply-colorscheme "$name" >/dev/null
