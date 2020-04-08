print("Guess a number")
math.randomseed(os.time())
-- math.random()
number = math.random(100)
answer = io.read("*n")

if answer < number then
	print("Too low")
elseif answer > number then
	print("Too high")
else
	print("You got it")
end


print("number: ", number)
print("anser: ", answer)
