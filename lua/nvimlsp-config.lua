-- Bare bones (default) nvimlsp server
--
--LUA--
require('lspconfig').sumneko_lua.setup{
  settings = {
    Lua = {
      runtime = {
        -- tell the language server which version of lua you're using (most likely luajit in the case of neovim)
        version = "luajit",
        -- setup your lua path
      },
      diagnostics = {
        -- get the language server to recognize the `vim` global
        globals = { "vim" },
      },
      workspace = {
        -- make the server aware of neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },

    },
  },
}

local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")


--GO--
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


