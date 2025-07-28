return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "right_align", -- 'eol' | 'overlay' | 'right_align'
        delay = 1000,
        ignore_whitespace = false,
        virt_text_priority = 100,
        use_focus = true,
      },
      current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        vim.keymap.set("n", "]g", gs.next_hunk, { buffer = bufnr, desc = "Next Git Hunk" })
        vim.keymap.set("n", "[g", gs.prev_hunk, { buffer = bufnr, desc = "Previous Git Hunk" })

        vim.keymap.set("n", "<leader>gp", gs.preview_hunk, { buffer = bufnr, desc = "Preview Git Hunk" })
        vim.keymap.set("n", "<leader>gr", gs.reset_hunk, { desc = "Reset Git Hunk" })
        vim.keymap.set("n", "<leader>gR", gs.reset_buffer, { desc = "Reset Git Buffer" })
        vim.keymap.set("n", "<leader>gc", gs.blame, { desc = "Blame Git File" })
        vim.keymap.set("n", "<leader>gb", gs.blame_line, { desc = "Blame Git Line" })
      end,
    },
  },
}
