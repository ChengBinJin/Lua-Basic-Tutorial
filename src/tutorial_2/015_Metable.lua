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


--mytable = {"Lua", "Java", "C#", "C++"}  -- ��ͨ��

--[[
--2, __newindex�����ǶԱ�����ݽ����޸ĵ�ʱ�򣬵������޸ĵ���һ���µ�������ʱ��Ż������ã� �����Ǹ�������µļ�ֵ�Ե�ʱ��������
mymetatable = {
	__newindex = function(tab, key, value)
		print("����Ҫ�޸ĵ�keyΪ��"..key.." �����keyֵ�޸�Ϊ��"..value)
		-- tab[5] = value
		rawset(tab, key, value)
	end
}

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
--]]


mytable = {"Lua", "Java", "C#", "C++"}  -- ��ͨ��
mymetatable = {
	__add = function(tab, newtab)
		local max_index = 0

		for k, v in pairs(tab) do
			if (k > max_index) then
				max_index = k
			end
		end

		for k, v in pairs(newtab) do
			max_index = max_index + 1
			table.insert(tab, max_index, v)
		end

		return tab
	end
} -- Ԫ�� Ԫ����չ����ͨ�����Ϊ

mytable = setmetatable(mytable, mymetatable)

newtable = {"PHP", "Python"}

r1 = mytable + newtable
r2 = newtable + mytable

for k, v in pairs(r1) do
	print(k, v)
end










