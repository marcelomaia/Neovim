# Neovim Configuration

This Neovim setup uses [LazyVim](https://github.com/LazyVim/LazyVim) and a curated set of plugins for productivity, code navigation, Git integration, and more.

## Useful Git Shortcuts

- `[h` — Previous Git hunk ([lua/plugins/gitsigns.lua](lua/plugins/gitsigns.lua))
- `]h` — Next Git hunk ([lua/plugins/gitsigns.lua](lua/plugins/gitsigns.lua))
- `<leader>gp` — Preview Git hunk ([lua/plugins/gitsigns.lua](lua/plugins/gitsigns.lua))
- `<leader>gr` — Reset Git hunk ([lua/plugins/gitsigns.lua](lua/plugins/gitsigns.lua))
- `<leader>gR` — Reset Git buffer ([lua/plugins/gitsigns.lua](lua/plugins/gitsigns.lua))
- Blame line annotation enabled by default ([lua/plugins/blamer.lua](lua/plugins/blamer.lua))

## Useful Navigation Shortcuts

- `[m` — Previous mark ([lua/plugins/signature.lua](lua/plugins/signature.lua))
- `]m` — Next mark ([lua/plugins/signature.lua](lua/plugins/signature.lua))
- `[d` — Previous diagnostic (LazyVim default)
- `]d` — Next diagnostic (LazyVim default)
- `<leader>fp` — Find plugin file (Telescope, see example in [lua/plugins/example.lua](lua/plugins/example.lua))

## LSP and Code Navigation

- `gd` — Go to definition (LSP)
- `gr` — Show references (LSP)
- `K` — Show documentation (hover, LSP)

## Commenting

- `gcc` — Toggle comment on current line (LazyVim default, via ts-comments.nvim or similar)

## Copilot Shortcuts (if enabled)

- `<Tab>` — Accept Copilot suggestion ([lua/config/keymaps.lua](lua/config/keymaps.lua))
- `<C-J>` — Next Copilot suggestion
- `<C-K>` — Previous Copilot suggestion
- `<C-X>` — Dismiss Copilot suggestion

## Other Shortcuts

- `q1` — Quit ([lua/config/keymaps.lua](lua/config/keymaps.lua))
- `w2` — Write/save file
- `wq1` — Write and quit

---

For more details, see the plugin configs in [lua/plugins/](lua/plugins/) and keymaps in