# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [1.5] hours on this challenge.

# 0. Pseudocode

# Input:
  # The input is an integer which represents the number of sides of a die.

# Output:
  # If .sides is called:
    # The output will be an integer corresponding to the number of sides the die has.

  # If .roll is called:
    # The output should be a random number from 1 upto and including the number that was passed in.

# Steps:
  # Create instance variable @sides.
  # .sides
    # This method will return the value of the instance variable @sides.
  # .roll
    # This method will return a random number from 1 to @sides.



# 1. Initial Solution

# class Die
#   def initialize(sides)
#     if sides <=0
#       raise ArgumentError.new("Number of sides must be greater than 0!!")
#     else
#       @sides = sides
#     end
#   end

#   def sides
#     p @sides
#   end

#   def roll
#     p 1 + rand(@sides)
#   end

# end

# die1 = Die.new(6)
# die1.sides
# die1.roll



# 3. Refactored Solution

# I spent some time going through my code and researching some methods to help me simplify but I could not come up with anything, so my refactored code is the same as my initial solution.

class Die

  def initialize(sides)
    if sides <=0
      raise ArgumentError.new("Number of sides must be greater than 0!!")
    else
      @sides = sides
    end
  end

  def sides
    @sides
  end

  def roll
    1 + rand(@sides)
  end

end



# 4. REFLECTION

# For this reflection, we were asked to answer the following questions:

# 1) What is an ArgumentError and why would you use one?

# An ArgumentError is an error that is given when there is a problem with the argument(s) that were passed into a class or method, such as the wrong number or type of argument.  You can create your own type of ArgumentError for classes and methods that you create to give a user a custom notification about the error.


# 2) What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# I have actually not done much with classes leading up to phase 0, I just did a little bit here and there.  So using the instance variable when the class was initialized was fairly new.  As far as challenges, I thought this exercise was fairly straight-forward, so it wasn't very challenging for me.


# 3) What is a Ruby class?

# A class is a set of rules, methods, and plans for how an object behaves.  An object is always part of a class.


# 4) Why would you use a Ruby class?

# Classes are useful if you want to create several objects that will all follow the same set of rules, have the same methods available to them, and behave in similar ways.


# 5) What is the difference between a local variable and an instance variable?

# A local variable is only usable inside the method where it was created.  An instance variable is available for a given instance anywhere inside a class.


# 6) Where can an instance variable be used?

# An instance variable can only be used inside a method.