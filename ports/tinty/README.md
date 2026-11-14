# Highland for tinty (live theme switching)

[tinty](https://github.com/tinted-theming/tinty) changes the theme of many apps with one command.
This folder adds Highland to tinty, and makes the switch **live**: open windows change color at once.

| App | What happens on `tinty apply` | How |
|---|---|---|
| **All open terminals** (Konsole, Kitty, Alacritty, WezTerm, ...) | Recolor at once | `hooks/terminals-live.sh` sends the colors to every terminal you own |
| **New terminals / shells** | Start with the current theme | `tinty init` in `shell/tinty.sh` |
| **KDE Plasma** | Desktop recolors at once | `hooks/kde-apply.sh`. Highland uses the hand-tuned `HighlandMidnight` / `HighlandMist`; any other scheme uses the generated `tinted-kde` file |
| **Neovim / Vim** | Running editors reload | Hook writes `colors/tinty.vim` and sends `SIGUSR1` |
| **fzf** | Current shell gets new colors | The `tinty` wrapper in `shell/tinty.sh` |
| **bat, btop, starship** | Follow the terminal colors | Use their terminal-color themes (see below) |

## Install

Needs `tinty` (`paru -S tinty` on CachyOS/Arch, or `cargo install tinty`) and `git`.

```bash
bash ports/tinty/install.sh
```

The script installs the schemes, templates and hooks, writes `~/.config/tinted-theming/tinty/config.toml`
(it backs up an existing one), runs `tinty sync`, and applies Highland Midnight.

Then 2 manual steps:

**1. Shell** - add to `~/.bashrc` or `~/.zshrc`:

```bash
source ~/.local/share/tinted-theming/highland/shell/tinty.sh
```

**2. Neovim** - add to `~/.config/nvim/init.lua`:

```lua
vim.o.termguicolors = true
pcall(vim.cmd.colorscheme, 'tinty')
vim.api.nvim_create_autocmd('Signal', { pattern = 'SIGUSR1',
  callback = function() pcall(vim.cmd.colorscheme, 'tinty') end })
```

Vim (`~/.vimrc`):

```vim
set termguicolors
silent! colorscheme tinty
autocmd SigUSR1 * silent! colorscheme tinty
```

## Use

```bash
tinty cycle                         # Midnight <-> Mist
tinty apply base24-highland-mist    # a specific flavor
tinty apply base16-gruvbox-dark-hard  # any of the 600+ tinted schemes
ht                                  # pick a theme with fzf (needs step 1)
tinty current                       # show the active theme
```

KDE shortcut: **System Settings → Shortcuts → Add New → Command**, command `tinty cycle`.

## Other tools

- **bat**: `--theme=base16` uses the terminal colors, so it follows tinty.
- **btop**: color theme `TTY` uses the terminal colors.
- **starship**: the default styles use terminal color names, so they follow tinty.
- **VS Code**: not live. Use the Highland extension (`ports/vscode`).

## Files

```
schemes/base16|base24/   Highland scheme files (tinty custom schemes)
templates/tinted-kde/    tinty template: KDE color scheme for any scheme
hooks/                   terminals-live.sh, kde-apply.sh
shell/tinty.sh           bash/zsh wrapper, tinty init, ht picker
config.toml              tinty config used by install.sh
install.sh               installer
```

After `tinty sync` brings new schemes, run this so KDE can use them too:

```bash
tinty build ~/.local/share/tinted-theming/highland/templates/tinted-kde
```

## Uninstall

```bash
rm -rf ~/.local/share/tinted-theming/highland
rm -f ~/.local/share/tinted-theming/tinty/custom-schemes/base{16,24}/highland-*.yaml
# restore your old config: ~/.config/tinted-theming/tinty/config.toml.bak.*
```
