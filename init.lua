vim.g.mapleader=" "

require('plugins')
require('mason-config')
require('nvimlsp-config')

require('telescope').setup {
  defaults = {
    prompt_prefix = 'TS >'
  }
}
require('telescope').load_extension('fzf')
