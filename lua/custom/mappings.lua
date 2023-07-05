---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- Better life
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-d>"] = { "<C-d>zz", "center after Ctrl+d" },
    ["<C-u>"] = { "<C-u>zz", "center after Ctrl+u" },
    ["n"] = { "nzzzv", "on next word center screen", opts = { nowait = true } },
    ["N"] = { "Nzzzv", "on previous word center screen", opts = { nowait = true } },

    -- Find a replace a word
    ["<leader>fr"] = {
      ":%s/<C-r><C-w>//gI<Left><Left><Left>",
      "find highlighted word globally",
      opts = { nowait = true },
    },

    -- Find a replace a word on the same line
    ["<leader>rl"] = {
      ":s/<C-r><C-w>//gI<Left><Left><Left>",
      "find highlighted word in line",
      opts = { nowait = true },
    },

    -- Fugivite git
    ["<leader>gs"] = { "<cmd>Git<CR>", "open fugitive", opts = { nowait = true } },
    ["<leader>fml"] = { "<cmd>CellularAutomaton make_it_rain<CR>", "if code is not working", opts = { nowait = true } },
    ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "toggle nvimtree" },
    ["<leader>gx"] = { "<cmd>cclose<CR>", "Close quicklist", opts = { nowait = true } },

    -- Debugging
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "Move line up", opts = { nowait = true } },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move line down", opts = { nowait = true } },
  },
}

-- more keybinds!

return M
