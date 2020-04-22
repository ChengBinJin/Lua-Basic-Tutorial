--[[
str = type("Hello world!")
print(str)

print(type("Hello world!"))
print(type(10))
print(type(1.1))
print(type(print))
print(type(type))
print(type(nil))  -- nil "nil"
print(type(x))


name = "siki"
print(name)
name = nil
print(name)

tab1 = {key1 = "value1", key2="value2"}
print(tab1.key1)

tab1.key1 = nil
print(tab1.key1)

tab1 = nil
print(tab1)
--print(tab1.key2)


--boolean
print(type(true))
print(type(false))
print(type(nil))

if true then
	print("true")
end

if nil then
	print("nil works as true")
else
	print("nil works as false")
end


print(type(2))
print(type(2.2))
print(type(0.2))
print(type(2e+3))
print(type(0.2e-1))
print(type(7.8345435345e-5))
--]]

-- string
str1 = "this is string1"; str2 = "this is string2"

html = [[
<html>
<head></head>
<body>
	<a href="heetp://www.sitiedu.com/">SikitѧԺ</a>
</body>
]]
print(html)

--.. +
print("2" .. "6")
print("2" + "6")
print("2" + 10)
print("2e2" * "6")
print(type("123".."45"))
print(#html)
print(#str1)
print(#str2)
print(#"sikiѧԺ")

