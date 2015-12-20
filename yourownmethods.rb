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