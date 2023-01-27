vim.g.mapleader=" "
vim.cmd[[colorscheme tokyonight]]

require('local-options')
require('plugins')
require('mason-config')
require('nvimlsp-config')
require('nvim-diagnostics')
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'tokyonight'
    -- ... your lualine config
  }
}
require('telescope').setup {
  defaults = {
    prompt_prefix = 'TS >'
  }
}
require('telescope').load_extension('fzf')
