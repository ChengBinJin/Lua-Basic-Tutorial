--[[mytable = {"Lua", "Java", "C#", "C++"}  -- 普通表
mymetatable = {} -- 元表 元表扩展了普通表的行为

mytable = setmetatable(mytable, mymetatable)
print(mytable[3])

print(getmetatable(mytable))
print(mymetatable)
--]]


--[[
mymetatable = {
	__index = function (tab, key)
		if (key >= 10) then
			return "Javascript"
		end
	end
} -- 元表 元表扩展了普通表的行为


newtable = {}
newtable[7] = "Javascript"
newtable[8] = "PHP"
newtable[9] = "C"

mymetatable = {
	__index = newtable
}  -- __index用来处理我们访问的索引不存在的时候，怎么办

mytable = setmetatable(mytable, mymetatable)

print(mytable)
print(mytable[1])
print(mytable[9])
--]]


mytable = {"Lua", "Java", "C#", "C++"}  -- 普通表

--[[
--2, __newindex当我们对表的数据进行修改的时候，当我们修改的是一个新的索引的时候才会起作用， 当我们给表添加新的键值对的时候，起作用
mymetatable = {
	__newindex = function(tab, key, value)
		print("我们要修改的key为："..key.." 把这个key值修改为："..value)
		-- tab[5] = value
		rawset(tab, key, value)
	end
}
--]]

newtable = {}
mymetatable = {
	__newindex = newtable
}

mytable = setmetatable(mytable, mymetatable)


mytable[1] = "C#"
mytable[5] = "Lua"
print(mytable[1])
print(mytable[5])
print(newtable[5])
