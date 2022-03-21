-- Main Configuration File

local icons = require('icons')

GlobalConfig = {
  colorscheme = 'onedark',
  ui = {
    float = {
      border = 'rounded',
      highlight = 'NightflyRed',
    }
  },
  plugins = {
    dashboard = {
      fuzzy_plugin = 'telescope',
    },
    package_info = {
      enabled = false,
    },
    zen = {
      enabled = false,
      kitty_enabled = false,
    },
  },
  icons = icons,
  statusline = {
    path_enabled = true,
    path = 'relative',
  }
}
