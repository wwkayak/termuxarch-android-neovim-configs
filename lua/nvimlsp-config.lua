require('lspconfig.ui.windows').default_options.border = 'single'

-- Neovim Built-in LSP Setup and Shortcuts --
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { buffer = 0 })
vim.keymap.set('n', '<leader>gt', vim.lsp.buf.type_definition, { buffer = 0 })
vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, { buffer = 0 })
vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename , { buffer = 0 })



-- LUA LSP Setup --
local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local opts = { noremap = true, silent = true }
--require('lspconfig').sumneko_lua.setup {
require('lspconfig').lua_ls.setup {
    on_attach = function()
      print("lua-language-server connected to Neovim LSP :)")
      vim.keymap.set('n', 'ff', '<cmd>lua vim.lsp.buf.format()<cr>', opts)
      vim.keymap.set('n', 'rr', '<ESC>:w<cr><cmd>luafile %<cr>', opts)
    end,

    settings = {
        Lua = {
            runtime = {
                version = "luajit",
            },
            format = {
                enable = true,
                enable_check_codestyle = true,
            },
            diagnostics = {
                -- get the LSP  to recognize the `vim` global
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
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded", })


-- GO LSP Setup -- (nothing yet)
require('lspconfig').gopls.setup {
    on_attach = function()
      print("gopls connected to Neovim LSP :)")
    end,
}
