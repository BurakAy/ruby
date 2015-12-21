=begin
a = Array.new + [12345] # Array addition
b = String.new + 'hello' # String addition
c = Time.new

puts 'a = ' + a.to_s
puts 'b = ' + b.to_s
puts 'c = ' + c.to_s
=end

=begin
# Time class
time = Time.new
time2 = time + 60

puts time
puts time2
=end

=begin
# Make a time for a specific moment using Time.mktime
puts Time.mktime(2000, 1, 1) # Y2K
puts Time.mktime(1985, 8, 8, 7, 30) # Random date with time
=end

=begin
begin_time = Time.mktime(1985, 7, 10, 7, 30, 22)
billion_seconds = begin_time + 1000000000
puts billion_seconds
=end

=begin
	
rescue Exception => e
	
end
puts 'What year were you born?'
year = gets.chomp

puts 'What month were you born? (Enter the month number)'
month = gets.chomp

puts 'What day were you born?'
day = gets.chomp

birthday = Time.mktime(year, month, day)

elapsed = Time.new - birthday

age = elapsed / 60 / 60 / 24 / 365

years_old = age.to_i

puts 'You are ' + years_old.to_s + ' years old! You get a SPANK for each birthday you\'ve had!'

years_old.to_i.times do 
	puts 'SPANK!'
end
=end

=begin
# Hash class, have a bunch of slots which can point to various obects.  Slots aren't in a row.
# Good to use hashes when you have a bunch of things you want to keep track of but they don't
# really fit into an ordered list.
colorArray = [] # same as Array.new
colorHash = {} # same as Hash.new

colorArray[0] = 'red'
colorArray[1] = 'green'
colorArray[2] = 'blue'

colorHash['strings'] = 'red'
colorHash['numbers'] = 'green'
colorHash['keywords'] = 'blue'

colorArray.each do |color|
	puts color
end

puts

colorHash.each do |codeType, color|
	puts codeType + ': ' + color
end 
=end


