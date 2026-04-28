# Monokai SublimeText — Spec

## Purpose
A Monokai color scheme that ships consistent ANSI palette + syntax colors across terminal emulators and Vim-family editors. The signature contribution vs upstream Monokai variants: the ANSI mapping uses VS Code Monokai's blue at indices 4/12 instead of Ghostty's built-in orange-at-blue mapping.

## File layout
```
palette.json                                    # canonical palette (ANSI + syntax + UI)
ghostty/Monokai SublimeText                     # Ghostty theme (key=value, no extension)
vim/colors/monokai-sublimetext.vim              # Vim 8+ colorscheme (termguicolors)
nvim/colors/monokai-sublimetext.lua             # Neovim entrypoint, calls setup()
nvim/lua/monokai-sublimetext/init.lua           # Neovim highlight definitions
nvim/lua/monokai-sublimetext/palette.lua        # Neovim palette table
README.md                                       # human-facing install + palette tables
screenshot.png                                  # palette preview
```

## Palette invariants
ANSI indices (must match across all targets):

| Idx | Normal    | Idx | Bright    |
|-----|-----------|-----|-----------|
| 0   | `#333333` | 8   | `#666666` |
| 1   | `#C4265E` | 9   | `#f92672` |
| 2   | `#86B42B` | 10  | `#A6E22E` |
| 3   | `#B3B42B` | 11  | `#e2e22e` |
| 4   | `#6A7EC8` | 12  | `#819aff` |
| 5   | `#8C6BC8` | 13  | `#AE81FF` |
| 6   | `#56ADBC` | 14  | `#66D9EF` |
| 7   | `#e3e3dd` | 15  | `#f8f8f2` |

Terminal: bg `#272822`, fg `#f8f8f2`, cursor `#f8f8f0`, selection bg `#49483e`.

Syntax: comment `#75715E`, string `#E6DB74`, keyword/operator/tag `#F92672`, function `#A6E22E`, number/constant `#AE81FF`, type `#66D9EF`, parameter `#FD971F`.

## Per-target notes

### Ghostty (`ghostty/Monokai SublimeText`)
Ghostty key=value config format. Sets `palette = N=#hex` for indices 0–15, plus `background`, `foreground`, `cursor-color`, `cursor-text`, `selection-background`, `selection-foreground`. Filename has no extension — the file name is the theme name displayed by Ghostty.

**CMUX compatibility**: [CMUX](https://github.com/manaflow-ai/cmux) reads Ghostty's `theme`, `font`, and config directly. Any change to the Ghostty file is automatically picked up by CMUX users — do not add a separate CMUX target.

### Vim (`vim/colors/monokai-sublimetext.vim`)
Standard Vim colorscheme. Requires Vim 8+ with `termguicolors`. Uses `highlight` commands with `guifg`/`guibg`.

### Neovim (`nvim/`)
Two-file structure:
- `colors/monokai-sublimetext.lua` — entrypoint loaded by `:colorscheme monokai-sublimetext`, calls `require("monokai-sublimetext").setup()`.
- `lua/monokai-sublimetext/init.lua` — defines `M.setup()` which clears existing highlights, sets `termguicolors`, then assigns highlights via `vim.api.nvim_set_hl` for: editor chrome, popup menu, status/tab line, messages, syntax, diff, diagnostic, treesitter (`@*`), LSP semantic tokens (`@lsp.type.*`), GitSigns, Telescope, and `vim.g.terminal_color_*` for the embedded terminal.
- `lua/monokai-sublimetext/palette.lua` — color table indexed by semantic name (`pink`, `green`, `comment`, etc.) plus ANSI normal/bright variants and diff/diagnostic colors.

Loaders supported: lazy.nvim (via `dir =`) or manual `vim.opt.rtp:prepend`.

## Adding a new editor target
1. Create a sibling top-level directory (e.g. `kitty/`, `alacritty/`).
2. Translate `palette.json` into the target's config format. Keep ANSI mapping bit-exact.
3. Add an install section to README.md and a per-target note here.
4. Do **not** introduce a build step — every target must be hand-editable and copy/symlink-installable.

## Non-goals
- No package manager publishing (no npm, no luarocks).
- No automated palette generation; `palette.json` is documentation, not a build input.
- No light variant.
