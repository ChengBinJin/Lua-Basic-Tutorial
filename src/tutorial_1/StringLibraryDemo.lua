text = [[hello world!]]
print(text)

-- text:find("stringToFind") is the same as string.find(text, "stringToFind")
b, e = text:find("hello w")
--print(b, e)
--print(string.sub(text, b, e))

b, e = text:find("h.-o")
--print(b, e)
--print(string.sub(text, b, e))

print(text:match("wor"))

for tag in string.gmatch(text, "l") do
	print("Found", tag)
end
