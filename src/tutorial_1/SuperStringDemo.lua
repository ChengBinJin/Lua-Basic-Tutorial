local meta = {}
local SS = {}

function SS.new(s)
	local superString = {}
	superString.s = s
	setmetatable(superString, meta)

	return superString
end

function SS.add(s1, s2)
	-- This is the string concatenation operator we saw in module 2
	return s1.s .. s2.s
end

meta.__add = SS.add


meta.__index = function(table, key)
	if key == "reverse" then
		return string.reverse(table.s)
	end
end

firstName = SS.new("Bill")
lastName = SS.new("Gates")

print(firstName + lastName)
print(lastName.reverse)
