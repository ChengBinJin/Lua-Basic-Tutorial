--[[
local file = io.open("test.txt", "w")
file:write("Testing 1 2 3\n")
file:write("ABC 123\n")
file:close()
]]--

local file = io.open("test.txt", "r")
--text = file:read("*a")
--print(text)
print("===")

for line in file:lines() do
	print(line)
end

-- Quick Tips
-- *a = reads whole file
-- *i = reads next line
-- *n = reads a number
-- x = read x characters
