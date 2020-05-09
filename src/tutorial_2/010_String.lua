--1. d定义

-- '' 	""		[[]]

--2. 转义字符

--[[
	\n 换行
	\r 回车
	\\ 代表一个反斜杠
	\" 代表”
	\' 代表'

a = "Hello\n\\World My name is \"Jame\""
b = "Hello\rWorld"
print(a)
print(b)

path = "C:\\Users\\souke\\Desktop\\LuaCode"
print(path)
--]]

str = "My name is siki!"
str2 = string.upper(str)
str3 = string.lower(str2)

str4 = string.gsub(str, "i", "123", 4)

index = string.find(str, "name", 4)

print(str, str2, str3, str4)

print(index)

num1 = 8
num2 = 10

-- string.format("加法运算: "..num1.."+"..num2.."="..(num1 + num2))
--print("加法运算: "..num1.."+"..num2.."="..(num1 + num2))
username = "w3er4wrfwer"
password = "lkjw3e4rl"

--print("select ' from user where username = '"..username.."' and password ='"..password.."'")

str6 = string.format("加法运算: %d + %d = %d", num1, num2, (num1 + num2))

str5 = string.reverse(str)
print(str5)
print(str6)

str7 = string.format("select * from user where username='%s' and password = '%s'", username, password)
print(str7)

date = 2; month = 1; year = 2020
print(string.format("日期格式化 %02d/%02d/%03d", date, month, year))

print(string.char(97, 98, 99, 100))
print(string.byte("ABCD", 4))
print(string.byte("ABCD"))

str = "abc"
print(string.len(str))
print(#str)

str1 = string.rep("abcd", 20)
print(str1)

for word in string.gmatch("Hello Lua user", "%a+") do
	print(word)
end



