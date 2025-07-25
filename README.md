# Neovim Configuration

A modern, productive Neovim setup powered by [LazyVim](https://github.com/LazyVim/LazyVim) and a curated set of plugins for code navigation, Git integration, and more.

---

## ✨ Features

- Fast startup and plugin management with LazyVim
- Powerful LSP integration and code navigation
- Git integration with handy shortcuts
- Fuzzy search and file explorer
- Easy commenting and table formatting
- Customizable keymaps for productivity

---

## ⚡ Requirements

- [Neovim](https://neovim.io/) >= 0.9
- [git](https://git-scm.com/)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for searching)
- [node.js](https://nodejs.org/) (for some language servers)

---

## 🚀 Installation

```sh
scripts/setup.sh
```

---

## 🛠️ First Steps

- `:Lazy` — Manage plugins
- `:Mason` — Manage LSP servers and tools
- `:checkhealth` — Diagnose common issues

---

## 🔥 Git Shortcuts

- `<leader>gp` — Preview Git hunk
- `<leader>gr` — Reset Git hunk
- `<leader>gR` — Reset Git buffer
- `<leader>gg` — Open Neogit (commit/push/etc)
- `<leader>g`  — More Git commands

---

## 🧭 Navigation Shortcuts

- `[h` / `]h` — Previous/Next Git hunk
- `[w` / `]w` — Previous/Next warning
- `[e` / `]e` — Previous/Next error
- `[d` / `]d` — Previous/Next diagnostic
- `[m` / `]m` — Previous/Next mark
- `[f` / `]f` — Previous/Next function
- `gd` — Go to definition
- `gr` — Go to references
- `gg` — Go to top of file
- `G`  — Go to end of file

---

## 🔍 Search & File Shortcuts

- `<leader>ff` — Find file
- `<leader>sg` — Grep content in files
- `<leader>ss` — LSP symbol search
- `<leader>sr` — Search and replace
- `<leader>s`  — More search options

---

## 🗂️ Explorer Shortcuts

- `<leader>e` — Toggle file explorer
- `d` — Delete file
- `y` — Yank file path
- `c` — Copy file
- `a` — Add file
- `r` — Rename file
- `<M-h>` — Toggle hidden files
- `[g` / `]g` — Previous/Next changed Git file

---

## 🧑‍💻 LSP & Code Navigation

- `gd` — Go to definition
- `gD` — Go to declaration
- `gI` — Go to implementation
- `gr` — Show references
- `K`  — Show documentation (hover)
- `<leader>ca` — Code actions
- `<leader>cr` — Rename symbol
- `<leader>cf`  — Format buffer or selection
- `<leader>x` — Diagnostics/Quick fix
- `<leader>ss` — Show LSP symbols

---

## 💬 Commenting

- `gcc` — Toggle comment (line or selection)

---

## 📊 Table Formatting

Align tables easily using [Tabularize](https://github.com/godlygeek/tabular):

Before:
```
| start| eat | left |
| 12   | 5   | 7    |
| 20   | 5   | 15   |
```

After running `:Tabularize /|`:
```
| start | eat | left |
| 12    | 5   | 7    |
| 20    | 5   | 15   |
```

---

## 💡 Other Useful Shortcuts

- `q1` — Quit
- `w2` — Save file
- `wq1` — Save and quit
- `<leader>qq` — Quit all
- `<leader>n` — Notification history
- `:vs file_path` — Open file vertically
- `:sp file_path` — Open file horizontally
- `gf` — Open file under cursor
- `zz` — Center cursor
- `zb` — Cursor at bottom
- `zt` — Cursor at top

---

## 🛟 Troubleshooting

- Run `:checkhealth` for diagnostics.
- Check `:messages` for errors.
- Ensure all dependencies are installed.

---

## 🙏 Credits

- [LazyVim](https://github.com/LazyVim/LazyVim)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- And all plugin authors!
