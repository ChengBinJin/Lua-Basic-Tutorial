--[[array = {"Lua", "C#"}
array[3] = "Java"

for i=1, 3 do
	print(array[i])
end

array = {}
for i=-2, 2 do
	array[i] = i * 3
end

for i=-2, 2 do
	print(array[i])
end

array = {{"С��", "С��"}, {"С��", "С��"}, {"����", "����"}, {"С��", "����"}}  -- 4 * 2
--print(array[1][1])

for i = 1, 4 do
	for j =1, 2 do
		print(array[i][j])
	end
end
--]]

array = {}
for i = 1,3 do
	array[i] = {}
	for j=1, 2 do
		array[i][j] = i * j
	end
end

for i = 1, 3 do
	for j =1, 2 do
		print(array[i][j])
	end
end
