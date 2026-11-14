# Highland - build all ports from palette.json
PY ?= python3
VERSION := $(shell $(PY) -c "import json;print(json.load(open('palette.json'))['version'])")

.PHONY: all build vsix preview check clean dist install-kde

all: build

build:            ## Regenerate every port from palette.json
	$(PY) scripts/gen_palette_formats.py
	$(PY) scripts/gen_kde_terms.py
	$(PY) scripts/gen_vim_cli.py
	$(PY) scripts/gen_vscode.py

vsix: build       ## Package the VS Code extension
	cd ports/vscode && npx --yes @vscode/vsce package --allow-missing-repository -o highland-theme-$(VERSION).vsix

preview:          ## Render previews/highland-palette.png (needs: pip install playwright && playwright install chromium)
	$(PY) scripts/gen_preview.py

check:            ## Validate generated files
	$(PY) scripts/check.py

dist: vsix        ## Build release archive in dist/
	mkdir -p dist
	cp ports/vscode/highland-theme-$(VERSION).vsix dist/
	zip -qr dist/highland-$(VERSION).zip ports palette palette.json README.md INSTALL.md LICENSE -x '*.vsix'

install-kde:      ## Install KDE + Konsole schemes for the current user
	mkdir -p ~/.local/share/color-schemes ~/.local/share/konsole
	cp ports/kde/*.colors ~/.local/share/color-schemes/
	cp ports/konsole/*.colorscheme ~/.local/share/konsole/

clean:
	rm -rf dist ports/vscode/*.vsix scripts/__pycache__
