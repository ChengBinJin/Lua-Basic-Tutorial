tab1 = {} -- empty table

tab2 = {key1=100, key2="value2"} -- init a table

print(tab1)
print(tab1.key)

print(tab2.key1)
print(tab2["key1"])

tab3 = {"apple", "orage", "pear", "banana"}
print(tab3[1])
print(tab3["2"])

for key, val in pairs(tab3) do
	print(key..": "..val)
end

for key, val in pairs(tab2) do
	print(key..": "..val)
end
