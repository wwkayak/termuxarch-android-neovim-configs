require('telescope').setup {
  defaults = {
    prompt_prefix = 'TS >'
  }
}
require('telescope').load_extension('fzf')
