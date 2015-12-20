=begin
names = ['Ada', 'Belle', 'Chris']

puts names
puts names[0]
puts names[1]
puts names[2]
puts names[3] # This is out of range.
=end

=begin
languages = ['English', 'German', 'Ruby']

languages.each do |lang|
	puts 'I love ' + lang + '!'
	puts 'Don\'t you?'
end

puts 'And let\'s hear it for C++!'
puts '...'

3.times do
  puts 'Hip-Hip-Hooray!'
end
=end

=begin
foods = ['artichoke', 'brioche', 'caramel']

puts foods
puts
puts foods.to_s
puts
puts foods.join(', ')
puts
puts foods.join(' :) ') + ' 8)'

200.times do
	puts[]
end
=end

=begin
# Push adds an object to the end of your array, and pop removes the last object from the array (and tell you what it was). 
# Last is similar to pop in that it tells you what's at the end of the array, except that it leaves the array alone. 
# Push and pop actually change the array
favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'

puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length
=end

=begin
puts 'Enter words to go in the array'

words = []
entry = 'x'

while entry != ''
	entry = gets.chomp
	words.push entry
end

puts words.sort
=end

contents = ['Table of Contents', 'Chapter 1: Numbers', 'page 1', 'Chapter 2: Letters', 'page 73', 'Chapter 3: Variables', 'page 118']
lineWidth = 60

puts
puts contents[0].center(lineWidth)
puts
puts contents[1].ljust(lineWidth/2) + contents[2].rjust(lineWidth/2)
puts
puts contents[3].ljust(lineWidth/2) + contents[4].rjust(lineWidth/2)
puts
puts contents[5].ljust(lineWidth/2) + contents[6].rjust(lineWidth/2)
