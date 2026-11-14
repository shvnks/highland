# Changelog

## 1.2.0 - 2026-11-14

- Scheme files moved to top-level `base16/` and `base24/`. The repo now works as a
  tinty `[[schemes.extras]]` source: add it by URL, and `tinty sync` keeps it updated.
- `install.sh` uses `[[schemes.extras]]` on tinty 0.35+ (falls back to custom-schemes on older tinty)
  and removes old custom-scheme copies.
- The tinted-kde template config is stored as `config.yaml.in`, so tinty does not read it as a scheme.
- `make check` fails if a `*.yaml` file exists outside `base16/` or `base24/`.

## 1.1.0 - 2026-11-14

- New: tinty integration for live theme switching (`ports/tinty/`).
  - Base16 + Base24 scheme files for both flavors.
  - Live recolor of all open terminals, KDE Plasma, Neovim/Vim and fzf.
  - `tinted-kde` template: KDE color schemes for any Base16/Base24 scheme.
  - Installer script and bash/zsh integration (`ht` fzf theme picker).

## 1.0.0 - 2026-11-14

- First release.
- Flavors: Highland Midnight (dark) and Highland Mist (light).
- Ports: KDE Plasma, Konsole, VS Code, Kitty, Alacritty, WezTerm, Windows Terminal,
  Vim/Neovim, btop, bat, fzf, Starship.
- Palette exports: JSON, CSS, SCSS, Tailwind, GIMP/Inkscape/Krita (.gpl).
