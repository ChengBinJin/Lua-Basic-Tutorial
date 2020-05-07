-- + - * / % ^（求幂)
--[[
a = 0.9
b = 0.2

print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a % b)
print(a ^ 2)
print(a ^ b)
print(-a)
--]]

-- 关系运算符 == ~= > < >= <=

--[[
a = 25
b = 30

if (a == b) then
	print("a==b")
else
	print("a~=b")
end

if (a~=b) then
	print("ab不相等")
else
	print("ab相等")
end

if (a<b) then
	print("a小于b")
else
	print("a不小于b")
end
--]]

-- 逻辑运算符 and	or	not
-- a and b a, b 都为true则结果为true则
-- a or b	a, b中只要有一个为true, 结果为true
-- not a

a = true
b = true

print(30 > 20 and 10 > 30)

print(true or false)

print(not false)

print(not true)

print("Hello " .. "World!")
print(#"hello")

tab = {1, 2, 3, 4, 5}
print(#tab)
tab = nil
tab = {key3="123", key4="value4"}
--tab.key2 = "abcde"
print(#tab)

tab[1] = 1
tab[2] = 2
tab[4] = 4
print(#tab)
