function getRandomNumber(maxValue)
	-- math.random()  comment one line
	math.randomseed(os.time())
	math.random()
	return math.random(maxValue)
end

function handleGuesses(...)
	lowMessage, highMessage, number = ...

	while number ~= answer do
		local answer = io.read("*n")

		if answer < number then
			print(lowMessage)
		elseif answer > number then
			print(highMessage)
		else
			break
	end

	print("Guess again")
end

end


local number = getRandomNumber(100)
print("Guess a number")
handleGuesses("Too low", "Too high", number)

print("You got it")
