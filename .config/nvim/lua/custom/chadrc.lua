---@type ChadrcConfig
local M = {}

-- Set theme
M.ui = {
  theme = 'catppuccin',

  statusline = {
    theme = "default",
    separator_style = "round",
    overriden_modules = nil,
  },

  tabufline = {
    lazyload = true,
    overriden_modules = nil,
  },
}

-- Import plugins
M.plugins = 'custom.plugins'

-- Import mappings
M.mappings = require "custom.mappings"

return M
