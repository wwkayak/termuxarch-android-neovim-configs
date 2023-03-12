--
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float({scope = "line", header = "Line Diagnostics"})]]
--
-- Diagnosticsn Shortcuts --
local kopts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>dl', vim.diagnostic.goto_next, kopts)
vim.keymap.set('n', '<leader>dh', vim.diagnostic.goto_prev, kopts)
vim.keymap.set('n', '<leader>da', vim.diagnostic.open_float, kopts)
vim.keymap.set('n', '<leader>dt', "<cmd>Telescope diagnostics<cr>", kopts)

-- Set the icons usedfordebugging to the codicon icons from a patched font
-- I had to patch the original Hack font manually to get codicons working.
-- To insert unicode w/o (copy/paste), ^vuxxxx . So ^vuf835 = 

local signs = { Error = " ", Warn = " ", Info = " ", Hint = " " }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
--
-- defaults, I like to sort by priority
-- Need to figure out individual virtual_text icons, based on priority (handlers?)
vim.diagnostic.config({
  virtual_text = {
    format = function(diag)
      local str = ""
      return str
    end,
    prefix = "",
  },
  prefix = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    header = "All Diagnostics",
    scope = "buffer",
    format = function(diag)
      local str =
          "[" .. diag.lnum .. "][" .. diag.col .. "] : " .. string.sub(diag.message, 1, 30)
      return str
    end,
    --    ["my_virt_text"] = {
    --      severity_icon = ""
    --    },
  },
})
