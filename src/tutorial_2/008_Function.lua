--[[
[local] function functionName(arg1, arg2, .... argN)
	functionBoudy
	[return value1, value2, ..., valueM]
end
--]]

local function max(number1, number2)
	if number1 >= number2 then
		return number1
	else
		return number2
	end
end

print(max(1, 10))

--����������Ϊ���ݸ�ֵ������������Ϊ��������

tmp = max
print(tmp(40, 3))

myprint = function(parma)
	print("This is myprint ".. parma)
end

myprint(100)

function add(num1, num2, printFun)
	result = num1 + num2
	printFun(result)
end

add(40, 50, myprint)

-- Lua����ĺ������Է��ض��ֵ

function temp()
	return 10, 15, 20, 30
end

a1, a2, a3, a4, a5 = temp()
print(a1, a2, a3, a4, a5)
