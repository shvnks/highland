# Contributing

## Rule 1: never edit generated files by hand

Everything in `ports/` and `palette/` is generated. Change one of these, then rebuild:

- `palette.json` - the colors
- `scripts/gen_*.py` - how a port uses the colors

```bash
make build    # regenerate all ports
make check    # validate files and WCAG contrast
make vsix     # package the VS Code extension (needs Node.js)
make preview  # re-render previews/ (needs Playwright)
```

CI fails if the generated files do not match `palette.json`.

## Add a new port

1. Add a generator `scripts/gen_<app>.py`. Read colors with `highland_lib` (`FLAVORS`, `ui()`, `ansi()`).
2. Write output to `ports/<app>/`.
3. Add it to the `build` target in the `Makefile`.
4. Add install steps to `INSTALL.md` and the table in `README.md`.

## Color rules

- Accents and text must keep 4.5:1 contrast or more against `base` (`make check` tests this).
- Keep the syntax mapping the same in every editor port (see README).

## Release

1. Update `version` in `palette.json` and `CHANGELOG.md`.
2. `make build && make check`, commit.
3. `git tag v1.0.1 && git push --tags`. CI builds the `.vsix` and a ZIP and attaches them to a GitHub release.
