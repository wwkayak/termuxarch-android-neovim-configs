local options = {
  termguicolors = true,
  clipboard = 'unnamedplus',
  laststatus = 3,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
