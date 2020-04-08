print("Guess a number")
math.randomseed(os.time())
-- math.random()
math.random()
local number = math.random(100)

while number ~= answer do
	local answer = io.read("*n")

	if answer < number then
		print("Too low")
	elseif answer > number then
		print("Too high")
	else

		break
	end

	print("Guess again")
end

print("You got it")
print("answer", answer)
