local function foo(t)
  local function traverse(t, f)
    for k, v in pairs(t) do
      if type(v) == "table" then
        traverse(v, f)
      end
      f(k, v)
    end
  end
  traverse(t, function(k,v) print(k,v) end)
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)