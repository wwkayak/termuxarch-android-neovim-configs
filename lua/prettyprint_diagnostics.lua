--DO this, to get a better understanding.

-- diagnostic structure
--[[

    bufnr: Buffer number
    lnum(+): The starting line of the diagnostic
    end_lnum: The final line of the diagnostic
    col(+): The starting column of the diagnostic
    end_col: The final column of the diagnostic
    severity: The severity of the diagnostic |vim.diagnostic.severity|
    message(+): The diagnostic text
    source: The source of the diagnostic
    code: The diagnostic code
    user_data: Arbitrary data plugins or users can add

  --]]
--local diags = vim.diagnostic.get(nil)
--
-- English
-- Diagnostic Structure is ALL tables
--    entries are either more tables, arrays, or variables
--    Every top level structure after diags has a name, but entries may not
--  ipairs can miss non-numeric indices, so use pairs length and everything
--
--  So I need to track indentation (ie tables of tables, vs tables of k,v pairs
--
--  So use count to track indentation, and how numeric indices, vs keys effect
--  print statements
--
--  So, starting with diagnostics structure we know it's an "array", but what if
--  we didn't know this?
--
--  get length (via pairs)
--  if index is numeric...
--    if table, call print table
--  else print value
--
unused      = 3
local diags = vim.diagnostic.get(0)
local data  = diags[1].user_data
table.insert(data, { { "tom", 60 }, { "Bob", 32 }, { "wow" } })
Depth = 0

Print_table = function(t)
  for k, v in pairs(t) do
    print(type(k), type(v))
    if type(v) == "table" then
      print("==========", k .. "(" .. #v .. ")")
      Print_table(v)
    else
      if type(k) == "string" then
        print(k .. " = " .. v)
      end
    end
  end
end

Get_padding = function(depth)
  local spaces = ""
  for _ = 1, depth do
    spaces = spaces .. " "
  end
  return spaces
end

Print_array = function(array)
  for i = 1, #array do
    print(array[i])
  end
end

Print_table(diags)
