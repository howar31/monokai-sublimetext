## Project
Monokai SublimeText — color scheme distributed as standalone config files for Ghostty, Neovim, and Vim. No build system, no package manager, no tests.

## Architecture
See [SPEC.md](SPEC.md) for the per-target file layout, palette source of truth, and color invariants.

## Source of truth
`palette.json` is the canonical palette. When colors change, update `palette.json` first, then mirror the change to:
- `ghostty/Monokai SublimeText`
- `vim/colors/monokai-sublimetext.vim`
- `nvim/lua/monokai-sublimetext/palette.lua`
The README color tables must stay in sync with `palette.json`.

## Conventions
- Hex colors: keep the casing already used in each file (Ghostty/Vim/Neovim use mixed casing — preserve, don't normalize).
- ANSI indices 0–15 follow VS Code Monokai mapping; do not swap normal vs bright.
- Add new editor targets as sibling top-level directories (`ghostty/`, `vim/`, `nvim/`), not nested.

## Compatibility notes
- Ghostty config is also consumed by [CMUX](https://github.com/manaflow-ai/cmux) — Ghostty changes propagate to CMUX users automatically; no separate target needed.

## Commits
Conventional Commits. `feat:` for new editor targets, `fix:` for color corrections, `docs:` for README/spec edits.
