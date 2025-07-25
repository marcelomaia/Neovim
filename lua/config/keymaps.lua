-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Custom comment keymaps like NERDCommenter
local map = vim.keymap.set

-- Open/Close
map("n", "q1", "<cmd>q<CR>", { desc = "Quit" })
map("n", "w2", "<cmd>w<CR>", { desc = "Write" })
map("n", "wq1", "<cmd>wq<CR>", { desc = "Write and Quit" })

-- Open Neogit
map("n", "<leader>gg", ":Neogit<CR>", { desc = "Open Neogit" })

-- Shortcut to copy the path
map("n", "<leader>yp", function()
  local full_path = vim.fn.expand("%:p")
  vim.fn.setreg("+", full_path)
  print("Full path copied: " .. full_path)
end, { desc = "Copy full file path" })

-- Copy to system clipboard
map({ "n", "v" }, "<leader>Y", '"+y', { desc = "Copy text to system clipboard" })
