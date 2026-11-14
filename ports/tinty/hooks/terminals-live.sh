#!/usr/bin/env bash
# tinty hook: recolor ALL open terminal windows of this user, live.
# It sends the tinted-shell color sequences to every pseudo-terminal you own.
file="${TINTY_THEME_FILE_PATH:?}"
for t in /dev/pts/[0-9]*; do
  [ -O "$t" ] && [ -w "$t" ] || continue
  TTY="$t" TMUX= TERM=xterm-256color bash "$file" >/dev/null 2>&1 || true
done
