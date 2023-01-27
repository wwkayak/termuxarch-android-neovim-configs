-- Bare bones (default) nvimlsp server
--
--This basically connects to the golsp server, bit does it start it?
-- We can verify this by opening a "go" file in nvim and running LspInfo

-- require('lspconfig').gopls.setup{}



-- addimg some more configuration options
require('lspconfig').gopls.setup{

    on_attach = function()
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer=0})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {buffer=0})
      vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, {buffer=0})
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {buffer=0})
      --vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, {buffer=0})
      vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, {buffer=0})
      vim.keymap.set('n', '<leader>dl', "<cmd>Telescope diagnostics<cr>", {buffer=0})
    end,
}
