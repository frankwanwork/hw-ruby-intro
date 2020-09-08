# When done, submit this entire file to the autograder.

# Part 1
def sum arr
	arr.inject(0, :+)
end

def max_2_sum arr
	if arr.empty?
		return 0 
	elsif arr.length == 1
		return arr.first
	else
		arr.sort!
		return arr[-1] + arr[-2] 
	end
end

def sum_to_n? arr, n
	if arr.empty? or arr.length == 1
		return false
	else
		iterations = (arr.length/2).ceil
		arr[0..iterations].each do |num1|
	arr.each do |num2|
		if num1 + num2 == n
	  		return true
		end
		end
		end
	end
	return false
end


# Part 2
def hello(name)
	return "Hello, #{name}"
end

def starts_with_consonant? s
	s =~ /^(?=\w)([^?=aeiou])/i
end

def binary_multiple_of_4? s
	if (s =~ /^[01]+$/).nil?
		return false
	else
		dec_s = s.to_i(10)
		return dec_s % 4 == 0
	end
	
end

# Part 3

class BookInStock
	attr_accessor :price, :isbn
  
	def initialize(isbn, price)
	raise ArgumentError if isbn.empty? or price <= 0
	@isbn = isbn
	@price = price
	end

	def price_as_string
	"$" + '%.2f' % price
	end
end
