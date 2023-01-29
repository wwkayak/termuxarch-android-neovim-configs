vim.g.mapleader=" "
vim.cmd[[colorscheme tokyonight]]

require('plugins')
require('vim-options')
require('nvim-tree-config')
require('mason-config')
require('nvimlsp-config')
require('nvim-diagnostics')
require('lualine-config')
require('telescope-config')
require('neogit-config')
require('nvim-surround').setup()
require('completion-config')

