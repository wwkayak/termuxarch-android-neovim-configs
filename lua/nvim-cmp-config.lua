local capabilities = require('cmp_nvim_lsp').default_capabilities()

local cmp = require('cmp')
cmp.setup {
  capabilities = capabilities,
  sources = {
	  {name = "nvim_lua"},
	  {name = "nvim_lsp"},
	  {name = "nvim-cmp"},
	  {name = "path"},
	  {name = "luasnip"},
	  {name = "buffer"},
  },
  snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
  },
  mapping = {
	["<C-k>"] = cmp.mapping.select_next_item(),
	["<C-j>"] = cmp.mapping.select_prev_item(),
	['<C-Space>'] = cmp.mapping.complete(),
	['<CR>'] = cmp.mapping.confirm({ select = true }),

  },
  window = {
	completion = {
		--border = { "╔", "═", "╗", "║", "╝", "═", "╚", "║"},
		border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│"},
   	},
	documentation = {
		border = { "╔", "═", "╗", "║", "╝", "═", "╚", "║"},
   	},
  },
}



