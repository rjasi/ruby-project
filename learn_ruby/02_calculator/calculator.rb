#write your code here
def add(x,y)
	return x+y
end

def subtract(x,y)
	return x - y
end

def sum(x)
	ans = 0
	for i in x
		ans += i
	end
	return ans
end


def multiply(x)
	sum = 1
	for i in x
		sum *=i
	end
	return sum
end

def power (base,exp)
	if (exp == 0)
		return 1
	end 

	return base * power(base,exp - 1)
end 		


def factorial (x)
	if (x == 1 or x == 0)
		return 1
	end

	return x * factorial(x-1)
end 