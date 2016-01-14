# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode

  # Accept an array.
  # For horizontal, iterate through each sub-array, if all values are equivalent to 'x', then the board is a winner.
  # For vertical, if the same index of each sub-array is equivalent to 'x', then the board is a weiner.
  # For right-to-left, starting at index 0 of sub-array 0, check for 'x', then go to [1][1], then [2][2], etc.  If all checked elements are 'x', the board is a winner.
  # For left-to-right, starting at index 4 of sub-array 0, check for 'x', then go to [3][1], then [2][2], then [1][3], then [0][4].  If checked elements are 'x', the board is a winner.



# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 67, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]

loser = [[47, 44, 71, 8, 'x'],
          [22, 69, 75, 'x', 73],
          [83, 85, 'x', 89, 57],
          [25, 'x', 96, 68, 51],
          [10, 70, 54, 'x', 83]]



# Initial Solution
# class BingoScorer

#   def initialize(array)
#     @array = array
#   end

#   def horizontal_win?(array)
#     array.each do |sub_array|
#       x_counter = 0
#       sub_array.each do |element|
#         if element == "x"
#           x_counter += 1
#         end
#         if x_counter == 5
#           puts "BINGO!!"
#         end
#       end
#     end
#   end

#   def vertical_win?
#     new_array = @array.transpose
#     horizontal_win?(new_array)
#   end

#   def right_to_left_win?
#     i=0
#     x_counter = 0
#     while i < 5
#       if @array[i][i] == 'x'
#         x_counter += 1
#       end
#       i += 1
#     end
#     if x_counter == 5
#       puts "BINGO!!"
#     else
#       puts "YOU ARE A LOSER!!"
#     end
#   end

#   def left_to_right_win?
#     i=0
#     x_counter = 0
#     while i < 5
#       if @array[i][-(i+1)] == 'x'
#         x_counter += 1
#       end
#       i += 1
#     end
#     if x_counter == 5
#       puts "BINGO!!"
#     else
#       puts "YOU ARE A LOSER!!"
#     end
#   end

# end


# Refactored Solution

class BingoScorer

  def initialize(array)
    @array = array
  end

  def horizontal_win?(array)
    array.each do |sub_array|
      x_counter = 0
      sub_array.each do |element|
        if element == "x"
          x_counter += 1
        end
        if x_counter == 5
          puts "BINGO!!"
        end
      end
    end
  end

  def vertical_win?
    new_array = @array.transpose
    horizontal_win?(new_array)
  end

  def diagonal_win?
    i=0
    x_counter1 = 0
    x_counter2 = 0
    while i < 5
      if @array[i][i] == 'x'
        x_counter1 += 1
      end
      if @array[i][-(i+1)] == 'x'
        x_counter2 += 1
      end
      i += 1
    end
    if x_counter1 == 5 || x_counter2 == 5
      puts "BINGO!!"
    else
      puts "YOU ARE A LOSER!!"
    end
  end



end




# DRIVER TESTS GO BELOW THIS LINE

test1 = BingoScorer.new(horizontal)
test1.horizontal_win?(horizontal)

test2 = BingoScorer.new(vertical)
test2.vertical_win?

test3 = BingoScorer.new(left_to_right)
test3.diagonal_win?

test4 = BingoScorer.new(right_to_left)
test4.diagonal_win?

test5 = BingoScorer.new(loser)
test5.diagonal_win?


# Reflection