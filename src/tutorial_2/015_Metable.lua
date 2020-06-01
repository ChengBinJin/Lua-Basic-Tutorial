mytable = {"Lua", "Java", "C#", "C++"}  -- 普通表
mymetatable = {} -- 元表 元表扩展了普通表的行为

mytable = setmetatable(mytable, mymetatable)
print(mytable[3])

print(getmetatable(mytable))
print(mymetatable)

mytable = setmetatable({"Lua", "Java", "C#", "C++"}, mymetatable)
