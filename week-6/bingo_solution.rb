# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# PSEUDOCODE:
  # Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
    # Select a letter: Create an array containing the letters B,I,N,G,O.  Generate a random number
      # that selects an index corresponding to a letter in the array.
    # Select a number: Generate a random integer in the range 1-100.
  # Check the called column for the number called.
    # Iterate through the outermost array, and check to see if the value at the index number that
      # corresponds to the letter is equal to the randomly selected number.
    # B = check 1st number in each inner array.(0)
    # I = check 2nd number in each inner array.(1)
    # N = check 3rd number in each inner array.(2)
    # G = check 4th number in each inner array.(3)
    # O = check 5th number in each inner array.(4)
  # If the number is in the column, replace with an 'x'
    # If the tested number matches the randomly selected number, reassign that number with an X.
  # Display the board to the console (prettily)
    # Print the board to the screen so it looks good.

# INITIAL SOLUTION:

class BingoBoard
  attr_reader :bingo_board

  def initialize(board)
    @bingo_board = board
    @call_count = 0
  end

  def call
    letters = ["B", "I", "N", "G", "O"]
    @letter_index = rand(5)
    @call_number = rand(100)+1
    @call_count += 1
    puts "Draw number #{@call_count} is: #{letters[@letter_index]}-#{@call_number.to_s}"
    puts ""
    check
  end

  def check
    @call_match = false
    @bingo_board.each do |sub_array|
      if sub_array[@letter_index] == @call_number
        sub_array[@letter_index] = "X"
        @call_match = true
      end
    end
    call_result
    print_board
  end

  def call_result
    if @call_match == true
      puts "!! WOOHOO !! The called number matched a spot on your board!!!"
    elsif @call_match == false
      puts "Sorry, the called number didn't match a spot on your board..."
    end
  end

  def print_board
    puts ""
    puts "Your current bingo board is:"
    puts "B   I   N   G   O"
    puts @bingo_board[0].join(", ")
    puts @bingo_board[1].join(", ")
    puts @bingo_board[2].join(", ")
    puts @bingo_board[3].join(", ")
    puts @bingo_board[4].join(", ")
  end

end

# REFACTORED SOLUTION



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
puts ""
puts "~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "Welcome to my bingo game!"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~"
new_game.print_board
puts ""
puts "Hit enter to play...."
ready = gets.chomp
new_game.call

while true
  puts "Press enter to pick another number or enter 'no' to stop playing...."
  ready = gets.chomp
  if ready == "no"
    exit
  else
    new_game.call
  end
end



# REFLECTION

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?


# What are the benefits of using a class for this challenge?


# How can you access coordinates in a nested array?


# What methods did you use to access and modify the array?


# Give an example of a new method you learned while reviewing the Ruby docs.


# Based on what you see in the docs, what purpose does it serve, and how is it called?


# How did you determine what should be an instance variable versus a local variable?


# What do you feel is most improved in your refactored solution?


