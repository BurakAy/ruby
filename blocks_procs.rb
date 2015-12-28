=begin
# proc
toast = Proc.new do 
	puts 'Cheers!'
end

toast.call
toast.call
toast.call
=end

=begin
# blocks can take parameters
doYouLike = Proc.new do |aGoodThing|
	puts 'I *really* like ' + aGoodThing + '!'
end

doYouLike.call 'vanilla'
doYouLike.call 'ruby'

# passing proc into a method
def doSelfImportantly someProc
  puts 'Everybody just HOLD ON!  I have something to do...'
  someProc.call
  puts 'Ok everyone, I\'m done.  Go on with what you were doing.'
end

sayHello = Proc.new do
  puts 'hello'
end

sayGoodbye = Proc.new do
  puts 'goodbye'
end

doSelfImportantly sayHello
doSelfImportantly sayGoodbye
=end

=begin
# You can also write methods which will determine how many times, or even if to call a proc.
def maybeDo someProc
  if rand(2) == 0
    someProc.call
  end
end

def twiceDo someProc
  someProc.call
  someProc.call
end

wink = Proc.new do
  puts '<wink>'
end

glance = Proc.new do
  puts '<glance>'
end

maybeDo wink
maybeDo glance
twiceDo wink
twiceDo glance
=end

=begin
# Method will take some object and a proc, and will call the proc on that object. 
# If the proc returns false, we quit; otherwise we call the proc with the returned object. 
# We keep doing this until the proc returns false (which it had better do eventually, 
# or the program will crash). The method will return the last non-false value returned by the proc. 
def doUntilFalse firstInput, someProc
  input  = firstInput
  output = firstInput

  while output
    input  = output
    output = someProc.call input
  end

  input
end

buildArrayOfSquares = Proc.new do |array|
  lastNumber = array.last
  if lastNumber <= 0
    false
  else
    array.pop                         # Take off the last number...
    array.push lastNumber*lastNumber  # ...and replace it with its square...
    array.push lastNumber-1           # ...followed by the next smaller number.
  end
end

alwaysFalse = Proc.new do |justIgnoreMe|
  false
end

puts doUntilFalse([5], buildArrayOfSquares).inspect
puts doUntilFalse('I\'m writing this at 3:00 am; someone knock me out!', alwaysFalse)
=end

=begin
# One of the other cool things you can do with procs is to create them in methods and return them.
def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

squareIt = Proc.new do |x|
  x * x
end

doubleIt = Proc.new do |x|
  x + x
end

doubleThenSquare = compose doubleIt, squareIt
squareThenDouble = compose squareIt, doubleIt

puts doubleThenSquare.call(5)
puts squareThenDouble.call(5)
=end

=begin
# Passing Blocks (Not Procs) into Methods
class Array
  def eachEven(&wasABlock_nowAProc)
    # We start with "true" because arrays start with 0, which is even.
    isEven = true

    self.each do |object|
      if isEven
        wasABlock_nowAProc.call object
      end

      isEven = (not isEven)  # Toggle from even to odd, or odd to even.
    end
  end
end

['apple', 'bad apple', 'cherry', 'durian'].eachEven do |fruit|
  puts 'Yum!  I just love '+fruit+' pies, don\'t you?'
end

# Remember, we are getting the even-numbered elements
# of the array, all of which happen to be odd numbers,
# just because I like to cause problems like that.
[1, 2, 3, 4, 5].eachEven do |oddBall|
  puts oddBall.to_s+' is NOT an even number!'
end
=end

=begin
def profile descriptionOfBlock, &block
  startTime = Time.now

  block.call

  duration = Time.now - startTime

  puts descriptionOfBlock+':  '+duration.to_s+' seconds'
end

profile '25000 doublings' do
  number = 1

  25000.times do
    number = number + number
  end

  # Show the number of digits in this HUGE number.
  puts number.to_s.length.to_s+' digits'
end

profile 'count to a million' do
  number = 0

  1000000.times do
    number = number + 1
  end
end
=end

=begin
# Grandfather Clock
def clock some_proc

#convert hours to 12 hour format
current_hour = Time.new.hour
if current_hour == 0
current_hour = current_hour + 12
elsif current_hour > 12
current_hour = current_hour - 12
end

#call the proc the number of hours passed
current_hour.to_i.times do
some_proc.call
end

end

# Dong proc
dong_proc = Proc.new do
puts 'DONG!'
end

clock dong_proc
=end

=begin
# Program Logger

def log block_description, &block
puts 'Beginning "'+block_description+'" . . .'
value_returned = block.call
puts '. . . "'+block_description+'" finished, returning:'
puts value_returned
end

log 'outer block' do

log 'some little block' do
5
end

log 'yet another block' do
'I like Thai food!'
end

false
end
=end

=begin
# Better Logger
$nesting_depth = 0
$space = ' '

def log block_description, &block
puts $space*$nesting_depth + 'Beginning "'+block_description+'" ...'
$nesting_depth = $nesting_depth + 1
value_returned = block.call
$nesting_depth = $nesting_depth - 1
puts $space*$nesting_depth + '... "'+block_description+'" finished, returning:'
puts $space*$nesting_depth + value_returned.to_s
end

log 'outer block' do

log 'some little block' do

log 'teeny-tiny block' do
'lots of love'
end

42
end

log 'yet another block' do
'I love Indian food!'
end

true
end
=end