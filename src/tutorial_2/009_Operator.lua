-- + - * / % ^������)
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

-- ��ϵ����� == ~= > < >= <=

--[[
a = 25
b = 30

if (a == b) then
	print("a==b")
else
	print("a~=b")
end

if (a~=b) then
	print("ab�����")
else
	print("ab���")
end

if (a<b) then
	print("aС��b")
else
	print("a��С��b")
end
--]]

-- �߼������ and	or	not
-- a and b a, b ��Ϊtrue����Ϊtrue��
-- a or b	a, b��ֻҪ��һ��Ϊtrue, ���Ϊtrue
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
