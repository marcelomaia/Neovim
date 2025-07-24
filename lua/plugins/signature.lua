-- show marks, ma, mb...
return {
  {
    "kshenoy/vim-signature",
    event = "VeryLazy", -- Carrega de forma preguiçosa
    vim.keymap.set("n", "]m", "']", { desc = "Next mark" }),
    vim.keymap.set("n", "[m", "'[", { desc = "Prev mark" }),
  },
}
