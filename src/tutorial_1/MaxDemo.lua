function findMax(...)
	local arguments = {...}
	local max = ...

	for i = 1, #arguments do
		-- index of lua starts from 1
		print(i, arguments[i])

		if arguments[i] > max then
			max = arguments[i]
		end
	end

	return max
end

answer = findMax(1, 5, 3, 10, 8, 12, 5, 2)
print('answer: ', answer)
