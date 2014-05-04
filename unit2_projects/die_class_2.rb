
# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: An array of sympols for our die
# Output: The number of sides input and a random element
# Steps:
# 1. Assign the label to a variable 
# 2. Raise an argument error if labels is empty
# 3. Return the number of sides by using .length
# 4. Choose a random element in def roll


# 3. Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    if labels.length < 1
      puts "You need to add labels"
    end
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end







# 4. Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    "You need to add labels" if labels.length < 1 
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end






# 1. DRIVER TESTS GO BELOW THIS LINE
roll = Die.new(['a', 'b', 'c', 'd'])
puts roll.sides == 4
puts ['a', 'b', 'c', 'd'].include? roll.roll







# 5. Reflection 
# The exercise was pretty simple except for one thing I can not figure out: How to raise an argument error if no parameters are passed. I can do it if ([]) is passed, but not nil.  Googling proved futile in my case. This is certainly something I need to figure out going forward.  I tried a number of things, including the .arity method, but couldn't get any of them to work if no parameters at all were passed. 
# Overall, this exercise was pretty similar to the last one with only some minor but easy to make adjustments.   