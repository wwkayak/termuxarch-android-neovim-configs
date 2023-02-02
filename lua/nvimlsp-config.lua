-- Bare bones (default) nvimlsp server LUA--
require('lspconfig').sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- tell the language server which version of lua you're using (most likely luajit in the case of neovim)
        version = "luajit",
        -- setup your lua path
      },
      format = {
        enable = true,
        enable_check_codestyle = true,
        --[[    defaultConfig = {
          indent_style = "space",
          indent_size = "2",
        },]]
      },
      diagnostics = {
        -- get the language server to recognize the `vim` global
        globals = { "vim", },
        neededFileStatus = { "any" },
      },
      workspace = {
        -- make the server aware of neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
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
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, { buffer = 0 })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = 0 })
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, { buffer = 0 })
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, { buffer = 0 })
vim.keymap.set('n', '<leader>dl', "<cmd>Telescope diagnostics<cr>", { buffer = 0 })


require('lspconfig').gopls.setup {
  on_attach = function()
    print("on_attach()")
  end,
}
