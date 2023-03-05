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

unsed = 3
local diags = vim.diagnostic.get(0)

local my_data  = {}
my_data[1] = {}
my_data[1]["name"] = "Tom"
my_data[1]["age"] = 60
my_data[1]["icon"] = " "
 
my_data[2] = {}
my_data[2]["name"] = "Bob"
my_data[2]["age"] = 47
my_data[2]["icon"] = " "

my_data[3] = {}
my_data[3]["name"] = "Shaq Jr."
my_data[3]["age"] = 19
my_data[3]["icon"] = " "

table.insert(diags[1].user_data, my_data)

Print_table = function(t)
  for i = 1, #t do
    for k, v in pairs(t[i]) do
      if k == "user_data" then
        print(k, ": ")
        for l = 1, #v do
          for m = 1, #v[l] do
            local str = "  "
            for n, a in pairs(v[l][m]) do
              str = str .. n .. " = " .. a .. ", "
            end
            print(str)
          end
        end
      else
        print(k, ": ", v)
      end
    end
  end
end

Print_table(diags)
