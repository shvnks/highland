# Highland Theme: Quick Install

All commands are for Linux (CachyOS / KDE). Run them from the `highland` folder:

```bash
git clone https://github.com/YOUR-GITHUB-USER/highland.git   # or unzip the release ZIP
cd highland
```

---

## 1. KDE Plasma (desktop colors)

```bash
mkdir -p ~/.local/share/color-schemes
cp ports/kde/*.colors ~/.local/share/color-schemes/
plasma-apply-colorscheme HighlandMidnight      # or HighlandMist
```

Or: **System Settings → Colors & Themes → Colors → Highland Midnight**.

## 2. Konsole

```bash
mkdir -p ~/.local/share/konsole
cp ports/konsole/*.colorscheme ~/.local/share/konsole/
```

Then: **Konsole → Settings → Edit Current Profile → Appearance → Highland Midnight**.

## 3. VS Code

```bash
code --install-extension highland-theme-1.0.0.vsix     # from Releases, or run: make vsix
# VSCodium: codium --install-extension highland-theme-1.0.0.vsix
```

Then: **Ctrl+K, Ctrl+T → Highland Midnight**.

## 4. Kitty

```bash
cp ports/kitty/*.conf ~/.config/kitty/
echo 'include highland-midnight.conf' >> ~/.config/kitty/kitty.conf
```

## 5. Alacritty

```bash
mkdir -p ~/.config/alacritty
cp ports/alacritty/*.toml ~/.config/alacritty/
```

Add to `~/.config/alacritty/alacritty.toml`:

```toml
[general]
import = ["~/.config/alacritty/highland-midnight.toml"]
```

## 6. WezTerm

```bash
mkdir -p ~/.config/wezterm/colors
cp ports/wezterm/*.toml ~/.config/wezterm/colors/
```

Add to `~/.config/wezterm/wezterm.lua`:

```lua
config.color_scheme = "Highland Midnight"
```

## 7. Windows Terminal (Windows PC)

1. Open **Settings → Open JSON file**.
2. Paste the content of `ports/windows-terminal/highland-midnight.json` inside `"schemes": [ ... ]`.
3. In your profile, set **Appearance → Color scheme → Highland Midnight**.

## 8. Vim / Neovim

```bash
# Neovim
mkdir -p ~/.config/nvim/colors && cp ports/vim/colors/*.vim ~/.config/nvim/colors/
# Vim
mkdir -p ~/.vim/colors && cp ports/vim/colors/*.vim ~/.vim/colors/
```

Add to your config (`init.vim` / `.vimrc`; in `init.lua` use `vim.cmd(...)`):

```vim
set termguicolors
colorscheme highland        " follows background=dark/light
```

## 9. btop

```bash
mkdir -p ~/.config/btop/themes
cp ports/btop/*.theme ~/.config/btop/themes/
```

Then in btop: press **o → Color theme → highland-midnight**.

## 10. bat

```bash
mkdir -p "$(bat --config-dir)/themes"
cp ports/bat/*.tmTheme "$(bat --config-dir)/themes/"
bat cache --build
echo '--theme="Highland-Midnight"' >> "$(bat --config-dir)/config"
```

## 11. fzf

```bash
mkdir -p ~/.config/highland
cp ports/fzf/*.sh ~/.config/highland/
echo 'source ~/.config/highland/highland-midnight.sh' >> ~/.bashrc   # or ~/.zshrc
```

For fish: add `set -gx FZF_DEFAULT_OPTS ...` with the same value from the `.sh` file to `~/.config/fish/config.fish`.

## 12. Starship

1. Copy the 2 `[palettes...]` blocks from `ports/starship/highland.toml` into `~/.config/starship.toml`.
2. Add this line at the **top** of `~/.config/starship.toml`:

```toml
palette = "highland_midnight"
```

## 13. tinty (live switching for all of the above)

```bash
bash ports/tinty/install.sh
echo 'source ~/.local/share/tinted-theming/highland/shell/tinty.sh' >> ~/.bashrc   # or ~/.zshrc
```

Then `tinty cycle` switches Midnight <-> Mist everywhere, live. Neovim needs 3 lines: see `ports/tinty/README.md`.

---

## All Linux parts in one go

```bash
cd highland
mkdir -p ~/.local/share/color-schemes ~/.local/share/konsole ~/.config/btop/themes ~/.config/nvim/colors ~/.vim/colors
cp ports/kde/*.colors ~/.local/share/color-schemes/
cp ports/konsole/*.colorscheme ~/.local/share/konsole/
cp ports/btop/*.theme ~/.config/btop/themes/
cp ports/vim/colors/*.vim ~/.config/nvim/colors/
cp ports/vim/colors/*.vim ~/.vim/colors/
command -v code >/dev/null && code --install-extension highland-theme-1.0.0.vsix   # .vsix from Releases
command -v codium >/dev/null && codium --install-extension highland-theme-1.0.0.vsix
plasma-apply-colorscheme HighlandMidnight
```

After this, select Highland in Konsole, VS Code, btop and Vim as shown above.

## Use the light flavor

Use **Mist** in place of **Midnight** in every file name and setting. For example: `HighlandMist`, `highland-mist.conf`, `Highland-Mist`, `highland_mist`.
