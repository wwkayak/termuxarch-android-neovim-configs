--[[
--Note: that thes lua settings will meaningfully increase the time until lua-language-server can service initial requests (completion, location) upon starting as well as time to first diagnostics. Completion results will include a workspace indexing progress message until the server has finished indexing.
--]]

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local cmp = require('cmp')

local kind_icons = {
  Text = "",
  Method = "",
  Function = "",
  Constructor = "",
  Field = "ﰠ",
  Variable = "",
  Class = "ﴯ",
  Interface = "",
  Module = "",
  Property = "ﰠ",
  Unit = "塞",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "פּ",
  Event = "",
  Operator = "",
  TypeParameter = "",
}

cmp.setup {
  capabilities = capabilities,
  sources = {
    { name = "nvim_lua" },
    { name = "nvim_lsp" },
    { name = "nvim-cmp" },
    { name = "path" },
    { name = "luasnip" },
    { name = "buffer" },
  },
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  formatting = {
    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind)

      vim_item.menu = ({
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        luasnip = "[LuaSnip]",
        nvim_lua = "[Lua]",
        latex_symbols = "[Latex]",
      })[entry.source.name]

      return vim_item
    end
  },
  mapping = {
    ["<C-l>"] = cmp.mapping.select_next_item(),
    ["<C-h>"] = cmp.mapping.select_prev_item(),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),

  },
  window = {
    completion = {
      --border = { "╔", "═", "╗", "║", "╝", "═", "╚", "║"},
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    },
    documentation = {
      border = { "╔", "═", "╗", "║", "╝", "═", "╚", "║" },
    },
  },
}
