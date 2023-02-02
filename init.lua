vim.g.mapleader=" "

vim.opt.tabstop=2

vim.cmd[[colorscheme tokyonight]]

require('vim-options')
require('plugins')
require('nvim-tree-config')
require('mason-config')
require('nvimlsp-config')
require('nvim-diagnostics')
require('lualine-config')
require('telescope-config')
require('neogit-config')
require('nvim-surround').setup()
require('nvim-cmp-config')
require('lspkind')
