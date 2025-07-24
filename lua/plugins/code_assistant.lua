local choice_file = vim.fn.expand("~/.config/nvim/code_assistant.txt")

-- Read or ask the user
local function get_code_assistant()
  if vim.fn.filereadable(choice_file) == 1 then
    return vim.fn.readfile(choice_file)[1]
  else
    local input = vim.fn.input(
      "Choose your code assistant:\n[1] github/copilot.vim\n[2] Exafunction/codeium.vim\n[Any other key = None]\n> "
    )
    vim.fn.writefile({ input }, choice_file)
    return input
  end
end

local selected = get_code_assistant()

-- Plugin definitions
local plugins = {}

if selected == "1" then
  table.insert(plugins, {
    "github/copilot.vim",
    cmd = "Copilot", -- lazy-load
    init = function()
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
    end,
  })
elseif selected == "2" then
  table.insert(plugins, {
    "Exafunction/codeium.nvim",
    build = ":Codeium Auth",
    event = "InsertEnter",
    config = function()
      require("codeium").setup({})
    end,
  })
else
  vim.notify("No code assistant selected", vim.log.levels.INFO)
end

return plugins
