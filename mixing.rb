# To get the string version of an object, write .to_s after it
=begin
var1 = 2
var2 = '5'

puts var1.to_s + var2

# .to_i gives the integer version of an object, and .to_f gives the float version
var1 = 2
var2 = '5'

puts var1 + var2.to_i
=end

##########################################
=begin
puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your momma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i
=end

# Gets just sits there, reading what you type until you press Enter.
#puts gets

# chomp takes off any Enters at the end of your string
=begin
puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'
=end

=begin
puts 'Enter your first name'
first = gets.chomp
puts 'Enter your middle name'
middle = gets.chomp
puts 'Enter your last name'
last = gets.chomp
puts 'Hello ' + first + ' ' + middle + ' ' + last + ".  It's a pleasure to meet you!"
=end

puts "What's your favorite number?"
number = gets.chomp
bigger = number.to_i + 1
puts "That's nice but " + bigger.to_s + " is a bigger and better number!"


