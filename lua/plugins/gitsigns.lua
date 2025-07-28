return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        vim.keymap.set("n", "]g", gs.next_hunk, { buffer = bufnr, desc = "Next Git Hunk" })
        vim.keymap.set("n", "[g", gs.prev_hunk, { buffer = bufnr, desc = "Previous Git Hunk" })

        vim.keymap.set("n", "<leader>gp", gs.preview_hunk, { buffer = bufnr, desc = "Preview Git Hunk" })
        vim.keymap.set("n", "<leader>gr", function()
          require("gitsigns").reset_hunk()
        end, { desc = "Reset Git Hunk" })
        vim.keymap.set("n", "<leader>gR", function()
          require("gitsigns").reset_buffer()
        end, { desc = "Reset Git Buffer" })
      end,
    },
  },
}
