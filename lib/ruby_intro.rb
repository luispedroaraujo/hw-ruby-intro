# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	total=0
	if arr.empty? 
		return 0
	else
		arr.each { |num| total+=num }
		return total
	end
end

def max_2_sum arr
  total=0
	if arr.empty? 
		return 0
	else
		if arr.length == 1
			return arr[0]
		else
			arr.each { |num| if arr.select{ |a| a > num}.length == 2 then total=arr.select{|a| a > num}[0] + arr.select{|a| a > num}[1] end}
			return total
		end
	end
end

def sum_to_n? arr, n
	if arr.length == 1
		return false
	end
  arr.each { |num| arr.each { |num2| if num!=num2 then if num+num2==n then return true end end}}
  return false
end

# Part 2

def hello(name)
  a = "Hello, "
  return a<<name
end

def starts_with_consonant? s
  if s[0] =~ /[^aeiouAEIOU]/
  	if s[0] =~ /[a-zA-Z]/
  		return true
		else
			return false
		end
	end
end

def binary_multiple_of_4? s
  if s =~ /[01]/
  		if s =~ /\D/
  			return false
  		else
		  	number = Integer(s)
		  	if number%4 == 0
		  		return true
				else
					return false
				end
			end
	else
		return false
	end
end

# Part 3

class BookInStock
	attr_reader :isbn, :price
	def isbn=(isbn)
		if isbn =~ /[^0-9\-]/ or isbn.length==0
			raise ArgumentError.new('Invalid ISBN.')
		else
			@isbn = isbn
		end
	end
	def price=(price)
		if price<=0
			raise ArgumentError.new('Invalid price.')
		else
			@price = price
		end
	end
	def initialize(isbn="00-00", price=0)
		self.isbn = isbn
		self.price = price
	end

	def price_as_string
		return "$#{'%.2f' % price}"
	end
end
