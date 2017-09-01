#write your code here
def calculator
	puts 'This is a simple calculator application.'
	puts 'To add two numbers, please type "add(x,y)",'
	puts 'where x and y are the numbers you would like to'
	puts 'add together. For subtraction, please type'
	puts '"subtract(x,y). You can even combine several'
	puts 'numbers by typing "sum([x,y,z,etc]).'
	puts 'Try it out!'
end

def add(x,y)
	return x + y
end

def subtract(x,y)
	return x - y
end

def sum(array)
	sum = 0;
	if array.length > 0 then
		array.each do |item|
			sum += item
		end
	else
		return 0
	end
	return sum
end



