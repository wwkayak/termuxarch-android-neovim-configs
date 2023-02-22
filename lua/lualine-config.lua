require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'tokyonight'
    -- ... your lualine config
  },
--[[
  tabline = {
    lualine_a = {
      {
        'tabs',
        max_length = vim.o.columns / 3,
        mode = 2,
      }
    },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  --]]
}
