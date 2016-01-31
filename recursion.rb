# Algorithm: sequence of unambiguous instructions 
# for solving a problem which can be implemented (program) on a computer


# Example; Sorting a problem
# Given: A sequence of numbers

# Output: A reordering of these numbers

#########################
# Pseudo Code
=begin

let N = 0
for each pair in room
set N = N + 2

if 1 person remains then
set N = N + 1



# Divide and Conquer (D & C) Algorithm
# Works by recursively breaking down a problem into two or more sub-problems of the same
# or related type until they become simple enough to solve directly.
# Example

rocks = 30.times.map(rand(200) + 1)
puts rocks.join(', ')
max_rock = 0

rocks.each do |rock|
	max_rock = rock if max_rock < rock
end

puts "Heaviest rock is: #{max_rock}"

## or with inject
puts "Heaviest rock is: #{rocks.inject{ |max_rock, rock| max_rock > rock ? max_rock : rock }}"

####################

def rock_judger(rocks_arr)    
    if rocks_arr.length <= 2  # the base case
      a = rocks_arr[0]
      b = rocks_arr[-1]
    else
      a = rock_judger(rocks_arr.slice!(0,rocks_arr.length/2))
      b = rock_judger(rocks_arr)
    end    
    
    return a > b ? a : b
end

 
rocks = 30.times.map{rand(200) + 1}
puts rocks.join(', ')
puts "Heaviest rock is: #{rock_judger(rocks)}"



######### RECURSION ###########

def append(ary, n)
	return ary if n < 0
	ary << n
	append(ary, n - 1)
end

puts append([], 2).join(", ") 

def reverse_append(ary, n)
	return ary if n < 0
	reverse_append(ary, n - 1)
	ary << n
end

puts append([], 2).join(", ") 

###############################

# Define a recursive function that finds the factorial of a number.

def factorial(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end

################################

# Define a recursive function that returns true if a string is a palindrome and false otherwise.

def palindrome(string)
  if string.length == 1 || string.length == 0
    true
  else
    if string[0] == string[-1]
      palindrome(string[1..-2])
    else
      false
    end
  end
end

### Way I would do it without using recursion ###

def palindrome(s)
	s.reverse == s ? true : false
end

text = gets.chomp.delete(" ").downcase
puts palindrome(text)

################################

# Define a recursive function that takes an argument n and prints 
# "n bottles of beer on the wall", "(n-1) bottles of beer on the wall", ..., 
# "no more bottles of beer on the wall".

def beer_on_the_wall(n)
	if n == 0
		puts "No more bottles of beer on the wall"
	else
		puts "#{n} bottles of beer on the wall"
		beer_on_the_wall(n-1)
	end
end

beer_on_the_wall(10)

################################

# Define a recursive function that takes an argument n and returns the fibonacci 
# value of that position. The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21... 
# So fib(5) should return 5 and fib(6) should return 8.

def fib(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fib(n-1) + fib(n-2)
  end
end

puts fib(5)

################################

# Define a recursive function that flattens an array. 
# The method should convert [[1, 2], [3, 4]] to [1, 2, 3, 4] and [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4]

def flatten(array, result = [])
	array.each do |element|
		if element.kind_of?(Array) 
			flatten(element, result)
		else
			result << element
		end
	end
	result
end

puts flatten([[1, 2], [3, 4]]).join(', ')

array = [[1, [8, 9]], [3, 4]]

puts array.flatten.join(', ')

################################

# Use the roman_mapping hash to define a recursive method that converts an integer to a Roman numeral.

def integer_to_roman(roman_mapping, number, result = "")
	return result if number == 0
	roman_mapping.keys.each do |divisor|
		quotient, modulus = number.divmod(divisor)
		result << roman_mapping[divisor] * quotient
		return integer_to_roman(roman_mapping, modulus, result) if quotient > 0
	end
end

roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

################################

# Use the roman_mapping hash to define a recursive method that converts a Roman numeral to an integer. 

def roman_to_integer(roman_mapping, str, result = 0)
  return result if str.empty?
  roman_mapping.keys.each do |roman|
    if str.start_with?(roman)
      result += roman_mapping[roman]
      str = str.slice(roman.length, str.length)
      return roman_to_integer(roman_mapping, str, result)
    end
  end
end

roman_mapping = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}

=end