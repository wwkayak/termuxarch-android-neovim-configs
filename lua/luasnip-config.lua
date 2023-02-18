local ls = require "luasnip"
local types = require "luasnip.util.types"

ls.config.set_config {
    history = true,
    updateevents = "TextChanged, TextChangedI",
    enable_autosnippets = true,
}

ls.add_snippets( "all",
    {

    }
)

ls.add_snippets( "lua",
   {
     ls.parser.parse_snippet("lf", "local $1 = function($2)\n $0\nend,"),
     ls.parser.parse_snippet("p", "print(\"$1\")"),
   }
)

vim.keymap.set({ "i", "s"} , "<C-k>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true, }
)
