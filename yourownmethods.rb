=begin
# So we defined the method sayMoo. (Method names, like variable names, start with a lowercase letter. There are a few exceptions, though, like + or ==.)
def sayMoo
  puts 'mooooooo...'
end

sayMoo

# To add a parameter to sayMoo (let's say, the number of moos), we would do this:
def sayMoo numberOfMoos
  puts 'mooooooo...'*numberOfMoos
end

sayMoo 3
puts 'oink-oink'
sayMoo  # This should give an error because the parameter is missing.
=end

=begin
# In the following program, there are two variables (num and numTimes2). They are local variables
def doubleThis num
	numTimes2 = num*2
	puts num.to_s+' doubled is ' + numTimes2.to_s
end

doubleThis 44
=end

=begin
# Return values
def sayMoo numberOfMoos
  puts 'mooooooo...'*numberOfMoos
  'yellow submarine'
end

x = sayMoo 2
puts x
=end

=begin
def ask question
	goodAnswer = false
	while (not goodAnswer)
		puts question
		reply = gets.chomp.downcase

		if (reply == 'yes' or reply == 'no')
			goodAnswer = true
			if reply == 'yes'
				answer = true
			else
				answer = false
			end
		else
			puts 'Please answer "yes" or "no".'
		end
	end

	answer
end

puts 'Hello, and thank you for...'
puts

ask 'Do you like eating tacos?'      # We ignore this return value.
ask 'Do you like eating burritos?'
nosePick = ask 'Do you play video games?'  # We save this return value.
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
ask 'Do you like eating tamales?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts nosePick
=end


=begin
def englishNumber number
	if number < 0
		return 'Please enter a number zero or greater.'
	end

	if number > 100
		return 'Please enter a number 100 or lesser.'
	end

	numString = '' # string to be returned

	# "left" is how much of the number we still have left to write out.
	# "write" is the part we are writing out now.
	left = number
	write = left/100
	left = left - write * 100 # subtract off hundreds

	if write > 0
		return 'one hundred'
	end

	write = left/10 # tens left to write out
	left = left - write * 10 # subtract off tens

	if write > 0
		if write == 1
			if left == 0
				numString = numString + 'ten'
			elsif left == 1
		        numString = numString + 'eleven'
		    elsif left == 2
		        numString = numString + 'twelve'
		    elsif left == 3
		        numString = numString + 'thirteen'
		    elsif left == 4
		        numString = numString + 'fourteen'
		    elsif left == 5
		        numString = numString + 'fifteen'
		    elsif left == 6
		        numString = numString + 'sixteen'
		    elsif left == 7
		        numString = numString + 'seventeen'
		    elsif left == 8
		        numString = numString + 'eighteen'
		    elsif left == 9
		        numString = numString + 'nineteen'
		    end

		left = 0
		elsif write == 2
		    numString = numString + 'twenty'
		elsif write == 3
		    numString = numString + 'thirty'
		elsif write == 4
		    numString = numString + 'forty'
		elsif write == 5
		    numString = numString + 'fifty'
		elsif write == 6
		    numString = numString + 'sixty'
		elsif write == 7
		    numString = numString + 'seventy'
		elsif write == 8
		    numString = numString + 'eighty'
		elsif write == 9
		    numString = numString + 'ninety'
		end


		if left > 0
		    numString = numString + '-'
		end
	end

    write = left  # How many ones left to write out?
  	left  = 0     # Subtract off those ones.

	if write > 0
		if write == 1
		    numString = numString + 'one'
		elsif write == 2
		    numString = numString + 'two'
		elsif write == 3
		    numString = numString + 'three'
		elsif write == 4
		    numString = numString + 'four'
		elsif write == 5
		    numString = numString + 'five'
		elsif write == 6
		    numString = numString + 'six'
		elsif write == 7
		    numString = numString + 'seven'
		elsif write == 8
		    numString = numString + 'eight'
		elsif write == 9
		    numString = numString + 'nine'
		end
	end

	if numString == ''
		# The only way "numString" could be empty is if
		# "number" is 0.
		return 'zero'
	end

	# If we got this far, then we had a number somewhere
	# in between 0 and 100, so we need to return "numString".
	numString
end


puts englishNumber(1)
puts englishNumber(59)
puts englishNumber(44)
puts englishNumber(36)
puts englishNumber(18)
puts englishNumber(22)
puts englishNumber(0)
puts englishNumber(67)
puts englishNumber(83)
puts englishNumber(95)
puts englishNumber(70)
puts englishNumber(100)
=end

# Clean up above method with arrays
def englishNumber number
	if number < 0 # No negatives
		return 'Please enter a number that isn\'t negative'
	end

	if number == 0
		return 'zero'
	end

	numString = '' # string to be returned

	onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

	# 'remaining' is how much of the number we still have left to write out
	# 'write' is the part we are currently writing out
	remaining = number

	#
	write = remaining/1000000000000
	remaining = remaining - write * 1000000000000

	if write > 0
		trillions = englishNumber write
		numString = numString + trillions + ' trillion'

		if remaining > 0
			numString = numString + ' '
		end
	end
	#

	#
	write = remaining/1000000000
	remaining = remaining - write * 1000000000

	if write > 0
		billions = englishNumber write
		numString = numString + billions + ' billion'

		if remaining > 0
			numString = numString + ' '
		end
	end
	#

	#
	write = remaining/1000000
	remaining = remaining - write * 1000000

	if write > 0
		millions = englishNumber write
		numString = numString + millions + ' million'

		if remaining > 0
			numString = numString + ' '
		end
	end
	#

	#
	write = remaining/1000
	remaining = remaining - write * 1000
	
	if write > 0
		thousands = englishNumber write
		numString = numString + thousands + ' thousand'

		if remaining > 0
			numString = numString + ' '
		end
	end
	#

	write = remaining/100
	remaining = remaining - write * 100

	if write > 0
		hundreds = englishNumber write # recursion, call itself
		numString = numString + hundreds + ' hundred'

		if remaining > 0
			numString = numString + ' '
		end
	end

	write = remaining/10
	remaining = remaining - write * 10

	if write > 0
		if ((write == 1) and (remaining > 0))
			numString = numString + teens[remaining - 1]
			remaining = 0
		else
			numString = numString + tensPlace[write - 1]
		end

		if remaining > 0
			numString = numString + '-'
		end
	end

	write = remaining
	remaining = 0

	if write > 0
		numString = numString + onesPlace[write - 1]
	end

	numString
end

puts englishNumber(1)
puts englishNumber(59)
puts englishNumber(44)
puts englishNumber(36)
puts englishNumber(18)
puts englishNumber(22)
puts englishNumber(0)
puts englishNumber(67)
puts englishNumber(83)
puts englishNumber(95)
puts englishNumber(70)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(1000)
puts englishNumber(10000)
puts englishNumber(1000000)
puts englishNumber(2605002)
puts englishNumber(1000000000)
puts englishNumber(1000000000000)
