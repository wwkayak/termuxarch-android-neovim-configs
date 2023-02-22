local options = {
  termguicolors = true,
  laststatus = 3,
  expandtab = true, --spaces, not TABS
  smartindent = true,
  tabstop = 2,
  shiftwidth = 2, --tabstop
  undofile=true, --persistent undo
  undodir="/home/tom/.vim/undo",
  undolevels=1000,
  number = true,
--  foldmethod = "indent",
  spell = true,
  spelllang="en_us",
  -- binccommand = "split",
  showtabline = 2
}


function Hank(option)
  print(option)
end

for k, v in pairs(options) do
  vim.opt[k] = v
  --  Hank(k)
end
