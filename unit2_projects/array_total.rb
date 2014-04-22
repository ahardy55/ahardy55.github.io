# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input? 
# An array into a method called total

# What is the output? (i.e. What should the code return?)
# It should return the sum of the array

# What are the steps needed to solve the problem?
# 1. Define a method total that takes an array as the parameter
# 2. Create a variable called sum 
# 3. Loop through the array
# 4. Assign the initial value to sum.  Then, add each subsequent value to the sum of sum!

# 1. For sentence maker: create method called sentence maker that takes an array as it's paramenter
# 2. 


# 2. Initial Solution

def pete(array)
  sum = 0
  array.each do |value|
    sum += value
  end
  sum
end

def sentence_maker(array)
  array_string = array.join(" ")
  array_string.capitalize + "."
end

# 3. Refactored Solution

def total(array)
  array.inject {|sum, value| sum + value}
end




# 4. Reflection 
# Both problems worked correct following my initial plans. Overall, the exercise went very quickly.
# For the total method, I did learn about the .inject method when lookin up how to refactor it.
# It's much more concise than the each/do loop and then adding it, plus I don't have to set a 
# variable.  The entire code is on one line!  I was unable to really refactor the sentence_marker, #BUT, I did find out that Rails has a .to_sentence method. Overall, a pretty simple challenge, but # still learned a new method for Ruby and another one when we start using Rails. 



