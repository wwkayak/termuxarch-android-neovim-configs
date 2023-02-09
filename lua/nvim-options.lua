local options = {
  termguicolors = true,
  laststatus = 3,
  expandtab = true,
  smartindent = true,
  tabstop = 2,
  shiftwidth = 2,
  undofile=true,
  undodir="/home/tom/.vim/undo",
  undolevels=1000,
  number = true,
  foldmethod = "indent",
  spell = true,
  spelllang="en_us",
  -- binccommand = "split",
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
