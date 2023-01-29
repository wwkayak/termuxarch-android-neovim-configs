-- Follwing TJs Tech Tuesday vim-cmp
local cmp = require('cmp')
cmp.setup {
  sources = {
	  {name = "nvim_lsp"},
	  {name = "nvim_lua"},
	  {name = "buffer"},
	  {name = "path"},
	  {name = "luasnip"},
  },
  snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      -- For `luasnip` users.
      end,
  },
  mapping = {
	["<C-k>"] = cmp.mapping.select_next_item(),
	["<C-j>"] = cmp.mapping.select_prev_item(),
	['<C-Space>'] = cmp.mapping.complete(),
	['<CR>'] = cmp.mapping.confirm({ select = true }),

  },
}
local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig').sumneko_lua.setup {
    capabilities = capabilities
  }



