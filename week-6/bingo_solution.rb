# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [9] hours on this challenge.


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

# class BingoBoard
#   attr_reader :bingo_board

#   def initialize(board)
#     @bingo_board = board
#     @call_count = 0
#   end

#   def call
#     letters = ["B", "I", "N", "G", "O"]
#     @letter_index = rand(5)
#     @call_number = rand(100) + 1
#     @call_count += 1
#     puts "Draw number #{@call_count} is: #{letters[@letter_index]}-#{@call_number.to_s}"
#     puts ""
#     check
#   end

#   def check
#     @call_match = false
#     @bingo_board.each do |sub_array|
#       if sub_array[@letter_index] == @call_number
#         sub_array[@letter_index] = "X"
#         @call_match = true
#       end
#     end
#     call_result
#     print_board
#   end

#   def call_result
#     if @call_match == true
#       puts "!! WOOHOO !! The called number matched a spot on your board!!!"
#     elsif @call_match == false
#       puts "Sorry, the called number didn't match a spot on your board..."
#     end
#   end

#   def print_board
#     puts ""
#     puts "Your current bingo board is:"
#     puts "B   I   N   G   O".center(30)
#     puts @bingo_board[0].join(",  ").center(30)
#     puts @bingo_board[1].join(",  ").center(30)
#     puts @bingo_board[2].join(",  ").center(30)
#     puts @bingo_board[3].join(",  ").center(30)
#     puts @bingo_board[4].join(",  ").center(30)
#   end

# end


# FINAL SOLUTION:

class BingoBoard
  attr_reader :bingo_board

  def initialize
    @bingo_board = []
    @call_count = 0
    @used_numbers = []
    @win_condition = false
    generate_board
  end

  def generate_board
    b = (1..15).to_a.sample(5)
    i = (16..30).to_a.sample(5)
    n = (31..45).to_a.sample(5)
    g = (46..60).to_a.sample(5)
    o = (61..75).to_a.sample(5)
    true_board = []
    true_board << b
    true_board << i
    true_board << n
    true_board << g
    true_board << o
    @bingo_board = true_board.transpose
    @bingo_board[2][2] = "X"
    start_game
  end

  def pick_number
    @letters = ["B", "I", "N", "G", "O"]
    @letter_index = rand(5)
    case @letter_index
    when 0
      @call_number = rand(15)+1 #numbers 1-15
    when 1
      @call_number = rand(15)+16 #numbers 16-30
    when 2
      @call_number = rand(15)+31 #numbers 31-45
    when 3
      @call_number = rand(15)+46 #numbers 46-60
    when 4
      @call_number = rand(15)+61 #numbers 61-75
    end
    used_number_check
  end

  def used_number_check
    if @used_numbers.include?(@call_number)
      pick_number
    else
      @used_numbers << @call_number
      call
    end
  end

  def call
    @call_count += 1
    puts "Draw number #{@call_count} is:  #{@letters[@letter_index]}-#{@call_number.to_s} "
    puts ""
    board_check
  end

  def board_check
    @call_match = false
    @bingo_board.each do |sub_array|
      if sub_array[@letter_index] == @call_number
        sub_array[@letter_index] = "X"
        @call_match = true
      end
    end
    call_result
  end

  def call_result
    if @call_match == true
      puts "!! WOOHOO !! The called number matched a spot on your board!!!"
    elsif @call_match == false
      puts "Sorry, the called number didn't match a spot on your board..."
    end
    print_board
    win_check
  end

  def print_board
    puts ""
    puts "Your current bingo board is:"
    puts "B   I   N   G   O".center(30)
    puts @bingo_board[0].join(", ").center(30)
    puts @bingo_board[1].join(", ").center(30)
    puts @bingo_board[2].join(", ").center(30)
    puts @bingo_board[3].join(", ").center(30)
    puts @bingo_board[4].join(", ").center(30)
  end

  def win_check
    @win_condition = false
    @bingo_board.each do |sub_array|
      if sub_array.join("") == "XXXXX"
        @win_condition = true
      end
    end
    @bingo_board.transpose.each do |sub_array|
      if sub_array.join("") == "XXXXX"
        @win_condition = true
      end
    end
    if @bingo_board[0][0] == "X" && @bingo_board[1][1] == "X" && @bingo_board[2][2] == "X" && @bingo_board[3][3] == "X" && @bingo_board[4][4] == "X"
      @win_condition = true
    end
    if @bingo_board[0][4] == "X" && @bingo_board[1][3] == "X" && @bingo_board[2][2] == "X" && @bingo_board[3][1] == "X" && @bingo_board[4][0] == "X"
      @win_condition = true
    end
    win_result
  end

  def win_result
    if @win_condition == true
      puts " "
      puts " *** !!!! BINGO !!!! ***"
      puts " "
      puts " *** DID YOU HEAR ME? ***"
      puts " "
      puts " *** HELLLZ YEAH!!!!!  I SAID BINGOOOOOOOOO M'ER F'ER!!!! *** !!!!!!!!!!!"
      puts " "
      puts " That means you won .... So yeah... Congratulations!!!"
      puts " Thanks for playing my Bingo Game!!!"
      puts " "
      exit
    else
      play_game
    end
  end

  def start_game
    puts ""
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Welcome to my bingo game!"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~"
    print_board
    puts ""
    puts "Hit enter to play...."
    ready = gets.chomp
    pick_number
  end

  def play_game
    while true
      puts "Press enter to pick another number or enter 'no' to stop playing...."
      ready = gets.chomp
      if ready == "no"
        exit
      else
        pick_number
      end
    end
  end

end




# DRIVER CODE (METHOD CALLS) GO BELOW THIS LINE
# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]

# new_game = BingoBoard.new(board)

new_game = BingoBoard.new



# REFLECTION

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  # The pseudocoding part at first wasn't difficult, but as the challenge went on, I kept adding
  # more and more complexity to my program eventually ending up with what I have. So the
  # pseudocoding became more difficult because I added my own complexity to the code.  I think
  # my pseudocoding style is fairly good and detailed, but sometimes I add more to the actual
  # code... I think they call this scope creep?

# What are the benefits of using a class for this challenge?
  # Keeping everything in a class is definitely an advantage for any challenge.  I think the
  # main advantage is that all the methods are contained into this one thing that does a specific
  # thing.. it's a bingo board.  So all the stuff that makes a board is contained together.

# How can you access coordinates in a nested array?
  # You can access coordinates by having multiple selectors in they array callout... for example if
  # you have a nested array called "array" and you want to access several levels down, you would
  # say: array[1][2][1].

# What methods did you use to access and modify the array?
  # Didn't really use any fancy methods to access or modifly the array.  I used direct assignment
  # to assign "X" to specific elements in the array.

# Give an example of a new method you learned while reviewing the Ruby docs.
  # One new method I have never used before is .transpose.  It was extremely useful in this challenge.

# Based on what you see in the docs, what purpose does it serve, and how is it called?
  # The .transpose method takes a nested array and turns "columns" into "rows" and vice versa.
  # A very handy method for this challenge which I used when generating my own board.

# How did you determine what should be an instance variable versus a local variable?
  # Any variable that needed to be passed from one method to another needs to be an instance variable.

# What do you feel is most improved in your refactored solution?
  # My refactored solution includes a bunch of extra stuff that my initial solution did not include.

