local ls = require("luasnip")
--local types = require "luasnip.util.types"

ls.config.set_config {
    history = true,
    updateevents = "TextChanged, TextChangedI",
    enable_autosnippets = true
}
-- snippets that are not language specific
ls.add_snippets( "all",
    {

    }
)

-- a couple of my own snippets for frequent lua stuff
ls.add_snippets( "lua",
   {
     ls.parser.parse_snippet("lf", "local $1 = function($2)\n $0\nend,"),
     ls.parser.parse_snippet("lr", "local $1 = require('$2').setup(\n\t{ $0\n\n},"),
     ls.parser.parse_snippet("p", "print(\"$1\")"),
   }
)

-- jump to next input field
vim.keymap.set({ "i", "s"} , "<C-n>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true, }
)





