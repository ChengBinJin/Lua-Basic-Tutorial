CalorieCounter = {count = 0, goal = 2000}

function CalorieCounter:add(amount)
	self.count = self.count + amount
end

function CalorieCounter:didReachGoal()
	return self.count >= self.goal
end

function CalorieCounter:new(t)
	t = t or {}
	setmetatable(t, self)
	self.__index = self
	return t
end

c = CalorieCounter:new{goal = 1500}
c:add(500)
print(c.count)
print(c:didReachGoal())

c:add(1000)
print(c.count)
print(c:didReachGoal())
