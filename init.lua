vim.g.mapleader=" "

vim.cmd[[colorscheme tokyonight]]

require('nvim-options')
require('plugins')
require('mason-config')
require('nvimlsp-config')
require('nvim-diagnostics')
require('lualine-config')
require('telescope-config')
require('neogit-config')
require('nvim-surround').setup()
require('nvim-cmp-config')
require('nvim-tree-config')
require('gitsigns').setup()
