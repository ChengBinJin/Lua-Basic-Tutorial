array = {"Lua", "C#", "Java"}

for k,v in pairs(array) do
	print(k, v)
end

array[2] = nil

for k, v in ipairs(array) do
	print(k, v)
end

--pairs迭代table, 遍历表中所有的key跟value
--ipairs按照索引从1开始，递增遍历，遇到nil值就停止

--[[
	for 变量列表 in 迭代函数，状态变量， 控制变量 do
		--循环体
	end
--]]

--1. 调用迭代函数，（把状态变量和控制变量当做参数传递给迭代函数） 状态变量只会在第一次使用的时候赋值
--2. 如果迭代函数的返回值为nil，退出for循环
	-- 如果不是nil的话，把返回值赋值给变量列表，并执行循环体

function square(state, control)
	if (control >= state) then
		return nil
	else
		control = control + 1
		return control, control * control
	end
end

for i, j in square, 9, 0 do
	print(i, j)
end


