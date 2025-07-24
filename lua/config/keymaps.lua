-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Custom comment keymaps like NERDCommenter
local map = vim.keymap.set

-- Normal mode keymaps
map("n", "q1", "<cmd>q<CR>", { desc = "Quit" })
map("n", "w2", "<cmd>w<CR>", { desc = "Write" })
map("n", "wq1", "<cmd>wq<CR>", { desc = "Write and Quit" })
map("n", "<leader>gg", ":Neogit<CR>", { desc = "Open Neogit" })
-- Copy to system clipboard
map({ "n", "v" }, "<leader>y", '"+y', { desc = "Copy to system clipboard" })

-- Copilot.vim

vim.keymap.set("i", "<Tab>", function()
  return vim.fn["copilot#Accept"]("<Tab>")
end, { expr = true, silent = true, noremap = true })

vim.keymap.set("i", "<C-J>", function()
  return vim.fn["copilot#Next"]()
end, { expr = true, silent = true })

vim.keymap.set("i", "<C-K>", function()
  return vim.fn["copilot#Previous"]()
end, { expr = true, silent = true })

vim.keymap.set("i", "<C-X>", function()
  return vim.fn["copilot#Dismiss"]()
end, { expr = true, silent = true })
