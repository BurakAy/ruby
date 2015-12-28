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

=begin
class Integer
	def to_eng
		if self == 5
			english = 'five'
		else
			english = 'fifty-eight'
		end

		english
	end
end

puts 5.to_eng
puts 58.to_eng
=end

=begin
# creating classes
class Die
	def roll
		1 + rand(6)
	end
end

# make a couple of dice
dice = [Die.new, Die.new]

# roll the dice
dice.each do |die|
	puts die.roll
end
=end

=begin
# instance variables
class Die
	def initialize # set up object when it is created
		@numberShowing = 6
	end

	def roll
		@numberShowing = 1 + rand(6)
	end

	def showing
		@numberShowing
	end
end


die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing

puts Die.new.showing # shows method initialized
=end

=begin
class Number
	def random
		@numberShowing = 1 + rand(75)
	end

	def showing
		@numberShowing
	end
end

class Mega
	def gold
		@goldShowing = 1 + rand(15)
	end

	def display
		@goldShowing
	end
end

number = Number.new
golden = Mega.new

number.random
puts number.showing

number.random
puts number.showing

number.random
puts number.showing

number.random
puts number.showing

number.random
puts number.showing

puts

golden.gold
puts golden.display
=end

=begin
class Dragon
	def initialize name
		@name = name
		@asleep = false
		@hunger = 10 # full
		@potty = 0 # doesn't need to go

		puts @name + ' is born.'
	end

	def feed
		puts 'You feed ' + @name + '.'
		@hunger = 10
		passageOfTime
	end

	def walk
		puts 'You walk ' + @name + '.'
		@potty = 0
		passageOfTime
	end

	def putToBed
		puts 'You put ' + @name + ' to bed.'
		@asleep = true

		3.times do
			if @asleep
			   	passageOfTime
			end

			if @asleep
				puts @name + ' snores, filling the room with smoke.'
			end
		end

		if @asleep
			@asleep = false
			puts @name + ' wakes up slowly.'
		end
	end

	def toss
		puts 'You toss ' + @name + ' up into the air.'
		puts 'He giggles, which singes your eyebrows.'
		passageOfTime
	end

	def rock
		puts 'You rock ' + @name + ' gently.'
		@asleep = true
		puts 'He briefly dozes off...'
		passageOfTime

		if @asleep
			@asleep = false
			puts '... but wakes up when you stop.'
		end
	end

	# "private" means that the methods defined here are
  	# methods internal to the object.  (You can feed
  	# your dragon, but you can't ask him if he's hungry.)
	private

	def hungry? # method names can end with '?', usually on when method returns true or false.
		@hunger <= 2
	end

	def poopy?
		@potty >= 8
	end

	def passageOfTime
		if @hunger > 0
			# move food from stomach to intestine
			@hunger = @hunger - 1
			@potty = @potty + 1
		else
			# the dragon is starving!
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts @name + ' is starving! In desperation he ate YOU!'
			exit # quits the program
		end

		if @potty >= 10
			@potty = 0
			puts 'Whoops! ' + @name + ' had an accident ... :('
		end

		if hungry?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts @name + '\'s stomach grumbles...'
		end

		if poopy?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts @name + ' does the potty dance...'
		end
	end
end

pet = Dragon.new 'Bret'
pet.feed
pet.toss
pet.walk
pet.putToBed
pet.rock
pet.putToBed
pet.putToBed
pet.putToBed
pet.putToBed
=end

=begin
class OrangeTree
	def initialize
		@height = 0
		@fruit = 0
		@age = 0
	end

	def height
		puts 'The tree has grown ' + @height.to_s + ' inches this year.'
		oneYearPasses
	end

	def countTheOranges
		puts 'The tree has ' + @fruit.to_s + ' oranges.'
		oneYearPasses
	end

	def pickAnOrange
		if @fruit < 1
			puts 'There are no oranges to pick this year'
		else
			puts 'The orange you have picked from the tree was very delicious!'
			@fruit = @fruit - 1
		end
		oneYearPasses
	end

	def oneYearPasses
		puts 'A year has passed'
		@age = @age + 1
		@height = @height + 2
		fruit = 0

		if dead?
			puts 'The tree has died'
			exit
		end

		if @age > 2
			@fruit = @age * 10
		else
			@fruit = 0
		end
	end

	private

	def dead?
		@age > 10
	end

	
end

puts ''
tree = OrangeTree.new
tree.height
tree.pickAnOrange
tree.countTheOranges
tree.height
tree.pickAnOrange
tree.countTheOranges
tree.countTheOranges
=end


class Dragon
	def initialize name
		@name = name
		@asleep = false
		@hunger = 10 # full
		@potty = 0 # doesn't need to go

		puts @name + ' is born.'
	end

	def command

	end

	def feed
		puts 'You feed ' + @name + '.'
		@hunger = 10
		passageOfTime
	end

	def walk
		puts 'You walk ' + @name + '.'
		@potty = 0
		passageOfTime
	end

	def putToBed
		puts 'You put ' + @name + ' to bed.'
		@asleep = true

		3.times do
			if @asleep
			   	passageOfTime
			end

			if @asleep
				puts @name + ' snores, filling the room with smoke.'
			end
		end

		if @asleep
			@asleep = false
			puts @name + ' wakes up slowly.'
		end
	end

	def toss
		puts 'You toss ' + @name + ' up into the air.'
		puts 'He giggles, which singes your eyebrows.'
		passageOfTime
	end

	def rock
		puts 'You rock ' + @name + ' gently.'
		@asleep = true
		puts 'He briefly dozes off...'
		passageOfTime

		if @asleep
			@asleep = false
			puts '... but wakes up when you stop.'
		end
	end

	# "private" means that the methods defined here are
  	# methods internal to the object.  (You can feed
  	# your dragon, but you can't ask him if he's hungry.)
	private

	def hungry? # method names can end with '?', usually on when method returns true or false.
		@hunger <= 2
	end

	def poopy?
		@potty >= 8
	end

	def passageOfTime
		if @hunger > 0
			# move food from stomach to intestine
			@hunger = @hunger - 1
			@potty = @potty + 1
		else
			# the dragon is starving!
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts @name + ' is starving! In desperation he ate YOU!'
			exit # quits the program
		end

		if @potty >= 10
			@potty = 0
			puts 'Whoops! ' + @name + ' had an accident ... :('
		end

		if hungry?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts @name + '\'s stomach grumbles...'
		end

		if poopy?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts @name + ' does the potty dance...'
		end
	end
end

pet = Dragon.new 'Bruce'

command = ''

while command != 'exit'
	puts 'Enter a command to control your dragon: (feed, walk, bedtime, rock, toss, exit'
	command = gets.chomp.downcase

	if command == 'feed'
		pet.feed
	elsif command == 'walk'
		pet.walk
	elsif command == 'bedtime'
		pet.putToBed
	elsif command == 'toss'
		pet.toss
	elsif command == 'rock'
		pet.rock
	elsif command == 'exit'
		exit
	else
		puts 'Unrecognized command. Try again'
	end 
end