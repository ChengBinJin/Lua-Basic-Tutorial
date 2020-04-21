
function adder(x, y)
	return x + y
end

function subtractor(x, y)
	return x - y
end

function calculate(x, y, f)
	return f(x, y)
end

print("Enter a number")
local x = io.read("*n", "*l")
print("Enter another number")
local y = io.read("*n", "*l")
print("Do you want to add or subtract? (Type + or -)")
local op = io.read(1, "*l")

if op == "-" then
	operation = subtractor
else
	operation = adder
end

print(calculate(x, y, operation))
