#!/usr/bin/env bash
# Install the Highland integration for tinty (live theme switching).
# Run from anywhere:  bash ports/tinty/install.sh
set -euo pipefail
SRC="$(cd "$(dirname "$0")" && pwd)"
REPO="$(cd "$SRC/../.." && pwd)"
DATA="${XDG_DATA_HOME:-$HOME/.local/share}/tinted-theming"
CONF="${XDG_CONFIG_HOME:-$HOME/.config}/tinted-theming/tinty"
HL="$DATA/highland"

command -v tinty >/dev/null || { echo "tinty is not installed. CachyOS/Arch: paru -S tinty  (or: cargo install tinty)"; exit 1; }

echo "1/6 Highland schemes -> $DATA/tinty/custom-schemes"
mkdir -p "$DATA/tinty/custom-schemes"
cp -r "$SRC/schemes/base16" "$SRC/schemes/base24" "$DATA/tinty/custom-schemes/"

echo "2/6 Templates, hooks, shell integration -> $HL"
mkdir -p "$HL"
cp -r "$SRC/templates" "$SRC/hooks" "$SRC/shell" "$HL/"
chmod +x "$HL"/hooks/*.sh

echo "3/6 Highland KDE + Konsole schemes"
mkdir -p "${XDG_DATA_HOME:-$HOME/.local/share}/color-schemes" "${XDG_DATA_HOME:-$HOME/.local/share}/konsole"
cp "$REPO/ports/kde/"*.colors "${XDG_DATA_HOME:-$HOME/.local/share}/color-schemes/"
cp "$REPO/ports/konsole/"*.colorscheme "${XDG_DATA_HOME:-$HOME/.local/share}/konsole/"

echo "4/6 tinty config -> $CONF/config.toml"
mkdir -p "$CONF"
if [ -f "$CONF/config.toml" ]; then
  cp "$CONF/config.toml" "$CONF/config.toml.bak.$(date +%Y%m%d%H%M%S)"
  echo "    Existing config backed up."
fi
cp "$SRC/config.toml" "$CONF/config.toml"

echo "5/6 tinty sync (downloads templates from GitHub)"
tinty sync

echo "6/6 Build the KDE template for every scheme, then apply Highland Midnight"
tinty build "$HL/templates/tinted-kde" >/dev/null
tinty apply base24-highland-midnight

cat <<MSG

Done. Last 2 manual steps:

  1) Shell (bash/zsh) - add this line to ~/.bashrc or ~/.zshrc:
       source "$HL/shell/tinty.sh"

  2) Neovim - add to ~/.config/nvim/init.lua:
       vim.o.termguicolors = true
       pcall(vim.cmd.colorscheme, 'tinty')
       vim.api.nvim_create_autocmd('Signal', { pattern = 'SIGUSR1',
         callback = function() pcall(vim.cmd.colorscheme, 'tinty') end })

Use:  tinty cycle            Midnight <-> Mist
      tinty apply base24-highland-mist
      ht                     pick any theme with fzf (after step 1)
MSG
