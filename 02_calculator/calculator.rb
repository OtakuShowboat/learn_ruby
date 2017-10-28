#write your code here
def add (num1, num2)
	return num1 + num2
end

def subtract (num1, num2)
	return num1 - num2
end

def sum(array)
	sum = 0.0
	if array.length == 0
		return sum
	else
		array.each do |item|
			sum += item
		end
	return sum
	end	
end

def multiply(array)
	sum = 1
	if array.length == 0
		return sum
	else
		array.each do |item|
			sum *= item
		end
	return sum
	end	
end

def power(num1, num2)
	return num1 ** num2
end

def factorial(num)
	if num == 0
		return 1
	elsif num == 1
		return 1
	
	else
		base = num
		
		while base > 1
		base -= 1
		num *= base
		end

		return num
	end
end