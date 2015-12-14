# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [3] hours on this challenge.

# Pseudocode

# Input:
  # The input will be an integer when a new instance is created, and when the .guess method is called.
# Output:  The output will depend on which method is called.
  # .guess: The output will be :high, :low, or :correct.
  # .solved?: The output will be true or false.
# Steps:
  # Initialize the instance variable 'answer'.
  # Create method 'guess' which gets passed an integer as input.
    # If the guess is greater than answer, return :high.
    # If the guess is less than answer, return :low.
    # If the guess is equal to answer, return :correct.
  # Create method 'solved?'.
    # If the guess was correct, return true.
    # If the guess was high or low, return false.


# INITIAL SOLUTION:

# Initial Solution 1 (Simple Version that passes the rspec):

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @solved = false
#   end

#   def guess(guess)
#     if guess > @answer
#       @solved = false
#       p :high
#     elsif guess < @answer
#       @solved = false
#       p :low
#     elsif guess == @answer
#       @solved = true
#       p :correct
#     else
#       puts "I don't understand your guess!"
#     end
#   end

#   def solved?
#     p @solved
#   end

# end

# game1 = GuessingGame.new(50)
# game1.guess(30)
# game1.solved?
# game1.guess(60)
# game1.solved?
# game1.guess(50)
# game1.solved?


# Initial Solution 2 (More fun version):

# class GuessingGame
#   def initialize
#     @answer = rand(100)
#     @last_guess = nil
#     @solved = false
#   end

#   def guess(guess)
#     if guess.to_i > @answer
#       @solved = false
#       puts "Your guess of #{guess} is too high!"
#     elsif guess.to_i < @answer
#       @solved = false
#       puts "Your guess of #{guess} is too low!"
#     elsif guess.to_i == @answer
#       @solved = true
#       puts "Your guess of #{guess} is correct!"
#       puts "Congratulations for getting the number correct!"
#       puts "Thanks for playing my game!!"
#       puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
#     else
#       puts "I don't understand your guess!"
#     end
#   end

#   def solved?
#     @solved
#   end
# end

# game = GuessingGame.new

# puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# puts "Welcome to my guessing game!"
# puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# puts "Guess a number between 0 and 100."

# until game.solved? == true
#   puts "What is your guess?"
#   last_guess = gets.chomp
#   game.guess(last_guess)
# end


# FINAL SOLUTION:

# I spent some time looking over other methods and looking over the ternary operator.
# I could not find a way to simplify or shorten my code.  The ternary operator looked
# handy, but I couldn't make it work with multiple things happening for each conditional
# statement.  I'm looking forward to seeing how other people tackled this problem.

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    if guess > @answer
      @solved = false
      :high
    elsif guess < @answer
      @solved = false
      :low
    elsif guess == @answer
      @solved = true
      :correct
    else
      puts "I don't understand your guess!"
    end
  end

  def solved?
    @solved
  end

end


# REFLECTION


# How do instance variables and methods represent the characteristics and behaviors
# (actions) of a real-world object?
  # A method is something that has action, something that an object can do. An instance
  # variable is a characteristic of an object.  So, maybe a simple analogy is, if you had
  # an object 'car'.  A method for that car might be moving or diving, and an instance
  # variable might be the car's speed.

# When should you use instance variables? What do they do for you?
  # An instance variable should be used when you have variables that are connected to an
  # object that is part of a class.  Since an instance variable is connected to the
  # instance of a specific object, it allows that variable to be used with all methods
  # that can be called on that object.

# Explain how to use flow control. Did you have any trouble using it in this challenge?
# If so, what did you struggle with?
  # Flow control in ruby is usually done with: conditional statments, logical operators,
  # and boolean expressions.  I found it fairly straight forward to use flow control in
  # this challenge.


# Why do you think this code requires you to return symbols? What are the benefits of
# using symbols?
  # The big advantage of using a symbol is that they are an immutable object with a unique
  # id in ruby, as opposed to a string which can be altered.
