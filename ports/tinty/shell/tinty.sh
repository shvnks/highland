# Highland + tinty shell integration (bash and zsh).
# Add to ~/.bashrc or ~/.zshrc:   source ~/.local/share/tinted-theming/highland/shell/tinty.sh

# Wrap tinty so that 'tinty apply' recolors THIS shell at once,
# and loads the fzf colors into the current session.
tinty_source_shell_theme() {
  local newer_file; newer_file=$(mktemp)
  command tinty "$@"
  local sub="$1"
  if [ "$sub" = "apply" ] || [ "$sub" = "init" ] || [ "$sub" = "cycle" ]; then
    local data_dir="${XDG_DATA_HOME:-$HOME/.local/share}/tinted-theming/tinty"
    export FZF_DEFAULT_OPTS="$HIGHLAND_FZF_BASE_OPTS"   # tinted-fzf appends; start clean
    while IFS= read -r script; do
      # shellcheck disable=SC1090
      . "$script"
    done < <(find -L "$data_dir" -maxdepth 1 -type f -name '*.sh' -newer "$newer_file")
  fi
  rm -f "$newer_file"
}

# Your own fzf options (set before this file is sourced) are kept.
HIGHLAND_FZF_BASE_OPTS="${HIGHLAND_FZF_BASE_OPTS-${FZF_DEFAULT_OPTS-}}"

if command -v tinty >/dev/null 2>&1; then
  alias tinty=tinty_source_shell_theme
  tinty_source_shell_theme init > /dev/null
  # Quick switch with fzf:  ht   (Highland Theme)
  ht() { tinty_source_shell_theme apply "$(command tinty list | fzf --prompt='theme> ' --query="${1:-highland}")"; }
fi
