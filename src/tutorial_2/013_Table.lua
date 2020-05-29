--[[mytable = {}

mytable[1] = "Lua"
mytable[1] = nil

mytable = nil

mytable = {}
print(type(mytable))

mytable[1] = "Lua"
mytable["name"] = "siki"

newtable = mytable
print(newtable[1])
print(mytable[1])

newtable[1] = "C#"
print(newtable[1])
print(mytable[1])

newtable[2] = "Java"
print(mytable[2])

mytable = nil
print(newtable.name)

newtable = nil

--table.xxxmethod

--Table连接
mytable = {"Lua", "C#", "Java", "C++", "C"}
print(table.concat(mytable))

print(table.concat(mytable, ', '))
print(table.concat(mytable, ', ', 2, 3))

mytable[6] = "PhP"
mytable[#mytable+1] = "PhP2"
print(mytable[#mytable])


table.insert(mytable, "Javascript")
print(mytable[#mytable])

table.insert(mytable, 2, "Boo")
print(mytable[2], mytable[3])

mytable[2] = nil
print(mytable[2], mytable[3])

table.remove(mytable, 2)
print(mytable[2], mytable[3])
--]]

mytable = {"Lua", "C#", "Java", "C++", "c", "C"}
print("排序前")

for k, v in ipairs(mytable) do
	print(k, v)
end

--[[
table.sort(mytable)
print("排序后")

for k, v in ipairs(mytable) do
	print(k, v)
end
--]]

mytable = {1, 10, 100, 14, 150, 0}
-- print("max: ", table.maxn(mytable))

function get_max_number(tab)
	local mn = 0
	for k, v in pairs(tab) do
		if v > mn then
			mn = v
		end
	end
	return mn
end

print(get_max_number(mytable))


