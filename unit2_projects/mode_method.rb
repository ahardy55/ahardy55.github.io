# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode
# def mode with array paramenter
# set a mode_hash to store each array value and the number of times it appears in the array
# set a largest variable to keep track of how often most frequent element appears
# create most elements array to store most frequent appearing element
# Loop through array, adding 1 to the value in mode hash each time element appears
# if the value of mode hash > largest
# largest equals the mode hash value
# most elements is equal to the value in mode hash
# else if it is equal to largest
# push that element into the most elements array to return both values

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

def toad(array)
  mode_hash = Hash.new(0)
  largest = 0
  most_elements = Array.new

  array.each do |value|
    mode_hash[value] += 1

    if mode_hash[value] > largest
      largest = mode_hash[value]
      most_elements = [value]

    elsif mode_hash[value] == largest
      most_elements.push([value])
    end
  end

  most_elements
end






# 3. Refactored Solution

def mode(array)
  mode_of_array = array.inject({}) { |k, v| k[v] = array.count(v); k }
  mode_of_array.select { |p,v| v == mode_of_array.values.max }.keys
end




# 4. Reflection 
# I've done a similiar project in the past, so my initial solution was pretty easy for me. My strategy was to break it down step by step, starting with the variables and data types I needed, then looping, followed by checking the largest value.  I learned a bit about .inject in the previous exercise and was excited to try it hear.  It definatley required a lot of work and failing, mostly regarding the syntax.  Using .inject required a different stategy and was much more concise. It is definately a bit more confusing when looking directly at it, but takes the solution from 15 lines of code down to just 4. 