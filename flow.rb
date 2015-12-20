=begin
# Comparison Methods
puts 1 > 2
puts 1 < 2
puts 5 >= 5
puts 5 <= 4
puts 1 == 1
puts 2 != 1

# We can compare strings.When strings get compared, they compare 
# their lexicographical ordering, which basically means their dictionary ordering.
puts 'cat' < 'dog'
=end

=begin
# Branching is if/else statements
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Chris'
  puts 'What a lovely name!'
end

puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs. Gabbard.  And your name is...?'
name = gets.chomp

if name == name.capitalize
  puts 'Please take a seat, ' + name + '.'
else
  puts name + '?  You mean ' + name.capitalize + ', right?'
  puts 'Don\'t you even know how to spell your name??'
  reply = gets.chomp

  if reply.downcase == 'yes'
    puts 'Hmmph!  Well, sit down!'
  else
    puts 'GET OUT!!'
  end
end

# Logical operators: and, or, not
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if (name == 'Chris' or name == 'Katy')
  puts 'What a lovely name!'
end

# Looping
command = ''

while command != 'bye'
  puts command
  command = gets.chomp
end

puts 'Come again soon!'
=end

=begin
bottles = 100
bottleMath = bottles - 1
bottleSubtract = bottleMath - 1

while bottles == 1
	bottleMath
	bottleSubtract
	puts bottleMath.to_s + ' bottles of beer on the wall, ' + bottleMath.to_s + ' bottles of beer. Take one down, pass it around, ' + bottleSubtract.to_s + ' bottles of beer on the wall.'

end

puts 'No more bottles of beer on the wall!'
=end

say = ''
puts 'HI SONNY!'

while say != 'bye'.upcase * 3
say = gets.chomp

	if (say == say.downcase)
		puts 'HUH?! SPEAK UP, SONNY!'
	else
		puts 'NO, NOT SINCE 1938!'
	end
end
