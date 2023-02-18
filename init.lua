vim.g.mapleader=" "
vim.g.netrw_http_cmd='elinks'
vim.g.netrw_http_xcmd= "-dump >"

vim.api.nvim_exec("autocmd TermOpen * startinsert", false)

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
require('luasnip-config')
