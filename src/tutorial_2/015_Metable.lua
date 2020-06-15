--[[mytable = {"Lua", "Java", "C#", "C++"}  -- ��ͨ��
mymetatable = {} -- Ԫ�� Ԫ����չ����ͨ�����Ϊ

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
} -- Ԫ�� Ԫ����չ����ͨ�����Ϊ


newtable = {}
newtable[7] = "Javascript"
newtable[8] = "PHP"
newtable[9] = "C"

mymetatable = {
	__index = newtable
}  -- __index�����������Ƿ��ʵ����������ڵ�ʱ����ô��

mytable = setmetatable(mytable, mymetatable)

print(mytable)
print(mytable[1])
print(mytable[9])
--]]


mytable = {"Lua", "Java", "C#", "C++"}  -- ��ͨ��

--[[
--2, __newindex�����ǶԱ�����ݽ����޸ĵ�ʱ�򣬵������޸ĵ���һ���µ�������ʱ��Ż������ã� �����Ǹ�������µļ�ֵ�Ե�ʱ��������
mymetatable = {
	__newindex = function(tab, key, value)
		print("����Ҫ�޸ĵ�keyΪ��"..key.." �����keyֵ�޸�Ϊ��"..value)
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
