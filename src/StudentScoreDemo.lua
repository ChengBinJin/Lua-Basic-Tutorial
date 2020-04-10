local grades = {}
while true do
	print("Enter student name (q to quit)")
	local name = io.read()

	if name == "q" then
		break
	end

	print("Enter student score")
	local score = io.read("*n", "*l")

	grades[name] = score
end

print("Printing grades!")

for k, v in pairs(grades) do
	print("Grade:")
	print(k, v)
end
