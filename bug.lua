local function foo(a, b)
  if a == nil then a = 0 end
  if b == nil then b = 0 end
  return a + b
end

print(foo(nil, 10)) -- Output: 10
print(foo(5, nil)) -- Output: 5
print(foo(nil, nil)) -- Output: 0
print(foo(5, 10)) -- Output: 15