
-- Diagnosticsn Shortcuts --
vim.keymap.set('n', '<leader>dl', vim.diagnostic.goto_next, { buffer = 0 })
vim.keymap.set('n', '<leader>dh', vim.diagnostic.goto_prev, { buffer = 0 })
vim.keymap.set('n', '<leader>dt', "<cmd>Telescope diagnostics<cr>", { buffer = 0 })
