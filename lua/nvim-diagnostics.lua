--Trying to keep Diagnostics seperate from LSP, as so many sem to do

vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, {buffer = 0})
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, {buffer = 0})
