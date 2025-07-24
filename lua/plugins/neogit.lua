return {
  "NeogitOrg/neogit",
  cmd = "Neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim", -- optional, for better diff UI
  },
  config = function()
    require("neogit").setup()
  end,
}
