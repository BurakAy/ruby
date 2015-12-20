=begin
var1 = 'stop'
var2 = 'Can you pronounce this sentence backwards?'

puts var1.reverse
puts var2.reverse
=end

=begin
# .length gets characters including spaces
puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters in your name, ' + name + '?'
=end

=begin
puts 'Enter first name'
first = gets.chomp
puts 'Enter middle name'
middle = gets.chomp
puts 'Enter last name'
last = gets.chomp
nameTotal = first + ' ' + middle + ' ' + last

puts 'Your full name has ' + nameTotal.length.to_s + ' characters!'
=end

=begin
letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters
=end

=begin
# center adds spaces to the beginning and end of the string to make it centered
lineWidth = 50
puts('Old Mother Hubbard'.center(lineWidth))
puts('Sat in her cupboard'.center(lineWidth))
puts('Eating her curds and whey,'.center(lineWidth))
puts('When along came a spider'.center(lineWidth))
puts('Which sat down beside her'.center(lineWidth))
puts('And scared her poor shoe dog away'.center(lineWidth))
=end

=begin
# The other two string fomatting methods are ljust and rjust, which stand for
# left justify and right justify.  They pad the string with spaces on the right or left
lineWidth = 40
str = '--> text <--'
puts str.ljust lineWidth
puts str.center lineWidth
puts str.rjust lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)
=end

=begin
puts 'WHADDYA WANT!?'
answer = gets.chomp
puts "DID YOU SAY, '" + answer.upcase + "'?  YOU'RE FIRED!"
=end

=begin
lineWidth = 50
heading = 'Table of Contents'.center(lineWidth)
ch1 = "Chapter 1: Numbers".ljust(lineWidth/2) + "page 1".rjust(lineWidth/2)
ch2 = "Chapter 2: Letters".ljust(lineWidth/2) + "page 72".rjust(lineWidth/2)
ch3 = "Chapter 3: Variables".ljust(lineWidth/2) + "page 118".rjust(lineWidth/2)

puts heading
puts ''
puts ch1
puts ch2
puts ch3
=end

###### MATH ######
=begin
# ** (exponentation), % (modulus), abs (absolute value of a number)
puts 5**2
puts 5**0.5
puts 7%3
puts ((5-2).abs)
puts ((2-5).abs)
=end

=begin
# rand (random number)
puts rand
puts rand
puts rand
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(1))
puts (rand(1))
puts (rand(1))
puts (rand(999999999999999999999999999))
puts ('The weatherman said there is a '+rand(101).to_s+'% chance of rain.')
=end

=begin
# srand (set the seed number)
srand 1776
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts ''
srand 1776
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(100))
=end

=begin
# Math, :: (scope operator)
puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)
=end
