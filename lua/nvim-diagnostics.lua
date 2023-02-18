
-- Diagnosticsn Shortcuts --
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<leader>dl', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>dh', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<leader>dt', "<cmd>Telescope diagnostics<cr>", opts)
