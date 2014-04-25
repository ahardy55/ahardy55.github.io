# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input? 
#  A minimum size and the value to add to the array

# What is the output? (i.e. What should the code return?)
# The array with the value added to it.  If the min size is greater than the value, it should add those as nil values to the array.

# What are the steps needed to solve the problem?
# def pad! that takes min_size a value as parameters
# Find out how many spaces are needed to fill 
# Push the value into the array once for each available space
# do the exact same thing, only non-destructively for the pad array


# 2. Initial Solution


def pad!(min_size, value = nil)
  spaces = min_size - self.length
  spaces.times do 
    self.push(value)
  end
    self
end

def pad(min_size, value = nil)
  spaces = min_size - self.length
  spaces.times do 
    self.push(value)
  end
    self
end





# 3. Refactored Solution
def pad!(min_size, value = nil)
  spaces = min_size - self.length
  spaces.times do 
    self.push(value)
  end
    self
end

def pad(min_size, value = nil)
  self.clone.pad!(min_size, value)
end




# 4. Reflection 
# Spoiler alert: I definately had to do this exact exercise before, so it all came pretty easily to me. My strategy worked out...find the number of empty spaces and push the value into the array that many times.  I was reminded of the clone method when refactoring, which I had forgotten about. 