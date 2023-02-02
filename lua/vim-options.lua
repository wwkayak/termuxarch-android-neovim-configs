local options = {
  termguicolors = true,
  --  clipboard+=unnamedplus,
  laststatus = 3,
  expandtab = true,
  smartindent = true,
  tabstop = 2,
  shiftwidth = 2,
}

function Hank(option)
  print(option)
end

for k, v in pairs(options) do
  vim.opt[k] = v
  --  Hank(k)
end

vim.keymap.set('n', '<Up>', '<Nop>', { noremap = true })
vim.keymap.set('n', '<Down>>', '<Nop>', { noremap = true })
vim.keymap.set('n', '<Left`>', '<Nop>', { noremap = true })
vim.keymap.set('n', '<Right>', '<Nop>', { noremap = true })
