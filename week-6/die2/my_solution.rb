# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: The input will be an array of strings.
# Output:  The output will depend on which method is called.
  # *.sides: If the sides method is called, the output will be an integer equal to the number
  # of possible choices, which represents the number of sides on the theoretical die.
  # *.roll: If the roll method is called, this simulates rolling the die and the output will
  # be a randomly selected element from the string that was passed in.
# Steps:
  # Create instance variable @sides.
  # .sides
    # This method will return the length of the input array.
  # .roll
    # This method will return a randomly selected element from the input array.


# INITIAL SOLUTION:

# class Die
#   def initialize(labels)
#     if labels.length <=0
#       raise ArgumentError.new("Number of elements in array must be greater than 0!!")
#     else
#       @labels = labels
#     end
#   end

#   def sides
#     @labels.length
#   end

#   def roll
#     @labels[rand(@labels.length)]
#   end
# end


# die1 = Die.new(["a", "b", "c", "d", "e", "f"])
# die1.sides
# die1.roll




# FINAL SOLUTION:

# I spent a little bit of time going through my code but could not find a way to simplify it.
#  It is already very short and simple, so I think it would be difficult to shorten or
# simplify it.  I'm not saying it can't be done, but I could not find a way in the 10-15
# minutes I spent looking at it.

class Die
  def initialize(labels)
    if labels.length <=0
      raise ArgumentError.new("Number of elements in array must be greater than 0!!")
    else
      @labels = labels
    end
  end

  def sides
    @labels.length
  end

  def roll
    @labels[rand(@labels.length)]
  end
end


# REFLECTION:

# This is my reflection for exercise 6.2: Die Class Part 2.

# In this exercise we were asked to create a class with methods that simulated rolling a die.
# It was a fun and quick challenge that I enjoyed.

# We were asked to answer the following questions as part of our reflection:

# 1) What were the main differences between this die class and the last one you created in
# terms of implementation? Did you need to change much logic to get this to work?
  # The last die class required an input of an integer, and the assumption was that the
  # output would be integers from 1 up to and including the number that was passed in.
  # This one differed because the input was an array of strings of any length, so the
  # 'die roll' had to select from any of the elements in the array.
  # The logic was essentially the same, you are still selecting something at random, but
  # the way this was done had to change.

# 2) What does this exercise teach you about making code that is easily changeable or
# modifiable?
  # This lesson definitely reinforced the idea that it is important for code to be easy to
  # read, and easy to change.  I feel like this particular code was simple and didn't
  # require much to change it, but I get the idea that on much more complicated code, the
  # importance of this concept would skyrocket.

# 3) What new methods did you learn when working on this challenge, if any?
  # I didn't learn any new methods in this challenge, but using the raise ArgumentError
  # command still feels new even though we used it in the last die challenge.  Using it
  # still feels like uncharted territory.

# 4) What concepts about classes were you able to solidify in this challenge?
  # This challenge just helped solidify organizing methods within challenges.  Also, using
  # instance variables.

# In the rubric, we were also asked to describe a Ruby Class:
  # A ruby class is kind of like a set of rules for how a group of objects that have something in
  # common should behave.  It doesn't mean that each object is the same, but they have this set of
  # rules described in the class in common.
