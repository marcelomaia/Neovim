return {
  {
    "godlygeek/tabular",
    keys = {
      { "<leader>t", group = "Tabularize", mode = "v" }, -- registra o grupo no which-key
      { "<leader>t|", [[:Tabularize /|<CR>]], mode = "v", desc = "Tabularize |" },
      { "<leader>t:", [[:Tabularize /:<CR>]], mode = "v", desc = "Tabularize :" },
      { "<leader>t#", [[:Tabularize /#<CR>]], mode = "v", desc = "Tabularize #" },
      { "<leader>t=", [[:Tabularize /=<CR>]], mode = "v", desc = "Tabularize =" },
    },
  },
}
