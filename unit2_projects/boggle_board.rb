# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# 1. Define a get_row method that takes parameters board and row
# 2. Return each element of the row
# 3. create get_column method that takes the row and column 
# 4. using .map or .collect to return the elements in the row 


# Initial Solution
class BoggleBoard

  def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

  def get_row(board, row)
    board[row]
  end

  def get_col(board, col)
    board.collect do |row|
      row[col]
    end
  end
end


# Refactored Solution

class BoggleBoard

  def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

  def get_row(board, row)
    board[row]
  end

  def get_col(board, col)
    board.collect {|row| row[col]}
  end
end


# DRIVER TESTS GO BELOW THIS LINE
boggle = BoggleBoard.new
puts boggle.create_word(boggle_board, [1,2], [1,1], [2,1], [3,2]) == "dock"
puts boggle.get_row(boggle_board, (0)) == ["b", "r", "a", "e"]
puts boggle.get_row(boggle_board, (1)) == ["i", "o", "d", "t"]
puts boggle.get_row(boggle_board, (2)) == ["e", "c", "l", "r"]
puts boggle.get_row(boggle_board, (3)) == ["t", "a", "k", "e"]
puts boggle.get_col(boggle_board, (0)) == ["b", "i", "e", "t"]
puts boggle.get_col(boggle_board, (1)) == ["r", "o", "c", "a"]
puts boggle.get_col(boggle_board, (2)) == ["a", "d", "l", "k"]
puts boggle.get_col(boggle_board, (3)) == ["e", "t", "r", "e"]
puts boggle.create_word(boggle_board, [3,2]) == "k"





# Reflection 
# The downfall of this week for me is that I've done literally some of these exact exercises before, including this one. Thinking back to when I first did this exercise, I remember running into some issues getting the column.  I learned .map and .collect and how they function in Ruby.  Redoing the exercise while already having this information made it kind of a breeze and only took a matter of 20 minutes or so, beginning to end. My next task with this exercise should be to add a new get_diagonal method!