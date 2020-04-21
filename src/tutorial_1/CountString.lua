function countStringLengths(...)
	local strings = 0
	local count = 0

	for i, v in ipairs{...} do
		strings = strings + 1
		count = count + #v
	end

	return strings, count
end

local s, c = countStringLengths("Hi", "World", "ABC", "123", "Bob")
print(s)
print(c)
