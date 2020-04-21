function getRandomNumber(maxValue)
	-- math.random()  comment one line
	math.randomseed(os.time())
	math.random()
	return math.random(maxValue)
end

function handleGuesses(...)
	lowMessage, highMessage, number = ...

	local guesses = {}

	while number ~= answer do
		local answer = io.read("*n")
		guesses[#guesses+1] = answer

		if answer < number then
			print(lowMessage)
		elseif answer > number then
			print(highMessage)
		else
			break
		end
	end

	print("Guess again")

	return guesses
end



local number = getRandomNumber(100)
print("Guess a number")
local guesses = handleGuesses("Too low", "Too high", number)

print("You got it")
print("Here are your guesses")

for i, v in ipairs(guesses) do
	print(i, v)
end
