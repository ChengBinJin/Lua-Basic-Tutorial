--[[

int fac(ing n){
	if (n==1)
		return n;
	else
		return n*fac(n-1);
}

--]]

function fact(n)
	if n == 1 then
		return n
	else
		return n*fact(n-1)
	end
end

print(fact(3))
print(fact(5))

fact2 = fact
print(fact2(3))

