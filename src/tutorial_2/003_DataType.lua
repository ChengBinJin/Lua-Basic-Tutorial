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
--]]

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
