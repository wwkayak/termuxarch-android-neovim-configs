-- Diagnosticsn Shortcuts --
local kopts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>dl', vim.diagnostic.goto_next, kopts)
vim.keymap.set('n', '<leader>dh', vim.diagnostic.goto_prev, kopts)
vim.keymap.set('n', '<leader>ds', vim.diagnostic.setloclist, kopts)
vim.keymap.set('n', '<leader>dt', "<cmd>Telescope diagnostics<cr>", kopts)

-- Set the icons usedfordebugging to the codicon icons from a patched font
-- I had to patch the original Hack font manually to get codicons working.
-- To insert unicode w/o (copy/paste), ^vuxxxx . So ^vuf835 = 

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- defaults, I like to sort by priority
-- Need to figure out individual virtual_text icons, based on priority (handlers?)
vim.diagnostic.config({
  virtual_text = true,
  prefix = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
