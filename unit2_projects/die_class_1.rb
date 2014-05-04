# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: A die, given the number of sides
# Output: A random number based on the number of die sides
# Steps:
# 1. Initialize die that takes the parameter sides. 
# 2. Raise argument error if die has less than 1 side
# 3. Return the number of sides die has
# 4. Roll should return random number between 1 and number of sides

# 3. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("Die must have at least one side")
    end
  end
  
  def sides
    return @sides
  end
  
  def roll
    rand(1..@sides.to_i)
  end
end




# 4. Refactored Solution
class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError.new("Die must have at least one side") if sides < 1
  end
  
  def sides
    @sides
  end
  
  def roll
    rand(@sides.to_i)
  end
end





# 1. DRIVER TESTS GO BELOW THIS LINE
roll = Die.new(6)
puts roll.sides == 6
puts roll2 = Die.new(0) rescue $!.message == "Die must have at least one side"
puts [1,2,3,4,5,6].include? roll.roll 








# 5. Reflection 
# Writing the code itself was pretty simple and everything worked on the first try. My issues were mostly to writing driver code under 2 circumstances: 1. Checking the error message if 0 was passed in as sides, and 2. checking the roll.  I learned how to use test the error message with rescue $1.message and how to use the include? method to check the roll.  Overall, the challenge was quick, easy and a satisfying, confidence building way to start a section!