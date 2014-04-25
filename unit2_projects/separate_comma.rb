# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? 
#Any number

# What is the output? (i.e. What should the code return?) 
# That number with a comma inserted if needed

# What are the steps needed to solve the problem?
# 1. Define separate_comma method and pass it number as paramenter
# 2. Declare a variable to store the number as a string
# 3. If num <=3, return num
# 4. Else we return the number with commas
# 4(a) Reverse the number, use regex to insert commas after every 3 places, and reverse the number back
 

# 2. Initial Solution

def separate_comma(number)
  num = number.to_s

  if num.length <= 3
    num
  else
    num.reverse.gsub(/...(?=.)/,'\&,').reverse
  end
end





# 3. Refactored Solution

def refactored_separate(number)
  number.to_s.reverse.gsub(/...(?=.)/,'\&,').reverse
end

# Driver Code

puts separate_comma(0)       == "0"
puts separate_comma(100)     == "100"
puts separate_comma(1000)    == "1,000"
puts separate_comma(10000)   == "10,000"
puts separate_comma(1000000) == "1,000,000"

puts refactored_separate(0)       == "0"
puts refactored_separate(100)     == "100"
puts refactored_separate(1000)    == "1,000"
puts refactored_separate(10000)   == "10,000"
puts refactored_separate(1000000) == "1,000,000"



# 4. Reflection 
# This would be an extremely difficult exercise for anyone not familiar with regular expressions, and I'm a wee bit shocked this exercise came up here (in an area without any regex tutorials that I can see).  Fortunately, I've used regex a bit and this exercise didn't provide much challenge. My strategy was always to use regex to insert the commas and just required a bit of research to find the proper syntax.  Regex proved a bit more useful that I though, as my initial code didn't actually require the if/else statement...using regex would return a number without a comment just fine!
