mytable = {"Lua", "Java", "C#", "C++"}  -- ��ͨ��
mymetatable = {} -- Ԫ�� Ԫ����չ����ͨ�����Ϊ

mytable = setmetatable(mytable, mymetatable)
print(mytable[3])

print(getmetatable(mytable))
print(mymetatable)

mytable = setmetatable({"Lua", "Java", "C#", "C++"}, mymetatable)
