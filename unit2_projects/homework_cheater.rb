# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: Title, topic, date. and thesis statement
# Output: That data written out in paragraph, ie, the cheated homework
# Steps:
# Define method (title, person, place, topic, date, thesis statement)
# Write out template incorporating those parameters into the statement so that it makes sense


# 3. Initial Solution
def essay_writer(title, thesis_statement, date, topic)
  return "#{title}
         #{topic} was very important to history. #{thesis_statement}.  In #{date}, #{topic} was instrumental 
         in changing history.  The world would be a very different place today had it not been for #{topic}."
end





# 4. Refactored Solution
 #I cannot fathom a way to refactor this one...







# 1. DRIVER TESTS GO BELOW THIS LINE


puts essay_writer("Breaking the Color Barrier", "He not only changed baseball, he changed the world", "1947", "Jackie Robinson") == "Breaking the Color Barrier
         Jackie Robinson was very important to history. He not only changed baseball, he changed the world.  In 1947, Jackie Robinson was instrumental 
         in changing history.  The world would be a very different place today had it not been for Jackie Robinson."

puts essay_writer("LBJ and Civil Rights", "Without LBJ, civil rights legislation may have never passed", "1964", "Lyndon Johnson") == "LBJ and Civil Rights
         Lyndon Johnson was very important to history. Without LBJ, civil rights legislation may have never passed.  In 1964, Lyndon Johnson was instrumental 
         in changing history.  The world would be a very different place today had it not been for Lyndon Johnson."

puts essay_writer("The 2nd War With the Brits", "It's not the most famous war, but it's an important one", "1812", "The War of 1812") == "The 2nd War With the Brits
         The War of 1812 was very important to history. It's not the most famous war, but it's an important one.  In 1812, The War of 1812 was instrumental 
         in changing history.  The world would be a very different place today had it not been for The War of 1812."


# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
# The strategy worked. I was mostly confused as to what the problem was asking for (I thought it was possibly asking for something far more complex.)  Otherwise, the strategy was pretty straightforward: create a method and input those parameters into a generic template.

# What questions did you have while coding? What resources did you find to help you answer them?
# Just questions about what the questions..

#Overall, this was an odd one.  I was actually a bit annoyed by the simplicity of it.  It was just an exercise of inserting parameters into a sentence!  It may have been fun to do something like determining the topic first, then having a series of templates depending on if it was about a person, place, etc.  

