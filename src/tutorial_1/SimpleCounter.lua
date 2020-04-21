
function simpleCounter(max)
	local count = 0

	return function()
		count = count + 1
		if count > max then
			return nil
		end

		return count
	end
end

for v in simpleCounter(50) do
	print(v)
end
