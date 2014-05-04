# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: An answer to the game, and a guess
# Output: Whether the guess is high or low, and true or false if it is solved
# Steps:
# 1. Def initialize that takes answer parameter
# 2. assign @answer variable to answer
# 3. define guess with guess parameter
# 4. If guess > answer
#     return high
#    elsif guess < answer
#     return low
#    else 
#     return that they guess correctly
# 5. def solved? method
# 6. If guess == answer, return true
#    else return false

# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(guess)
#     @guess = guess
#     if @guess > @answer
#       :high
#     elsif @guess < @answer
#       :low
#     else
#       "You guessed correctly!"
#     end
#   end
  
#   def solved?
#     if @guess == @answer
#       true
#     else 
#       false
#     end
#   end
# end





# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    (@guess > @answer ? :high : (@guess < @answer ? :low : ("You guessed correctly")))
  end
  
  def solved?
    @guess == @answer ? true : false
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE
game = GuessingGame.new(20)
puts game.guess(20) == "You guessed correctly"
puts game.guess(10) == :low
puts game.guess(30) == :high
puts game.solved? == false
game.guess(20)
puts game.solved? == true



# 5. Reflection 
# My strategy worked from the beginning and I didn't run into any issues...which I sadly can't claim is because of my amazing intellect, but because I've done many excercises very similar to this one in the past. It's safisfying to get an exercise that you breeze right through though!  I did get to look up and learn how to make shortened if/elsif/else statements, and how to organize them to make them readable using ().  I had to use a little bit of trial and error as my instinct was to put each statement in it's own (), instead of the way it's organized in the code above. This exercise is certainly one I can work on challenging myself with in the future as it can be vastly expanded and made far more complex!
