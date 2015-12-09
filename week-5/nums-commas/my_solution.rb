# Numbers to Commas Solo Challenge

# I spent [6] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?  The input is an integer.

# What is the output? (i.e. What should the code return?) The code needs to
# return a string made of numbers with a commas separating the thousand,
# millions, billions, etc.

# What are the steps needed to solve the problem?

  # Convert integer argument into a string.
  # Split string into characters and push into an array.
  # Count elements in the array.
  # If number of elements is 3 or less, we can rejoin the elements into a string and return it without adding commas.
  # If number of elements is 4 or more, we need to add commas.
  # Push elements to new array and add commas where appropriate.
    # - Determine where first comma should go.
      # - Create a counter equal to the number of digits before the first comma.
      # - Push digits to new array, subtract 1 from counter.
      # - When counter is done, push comma.
    # - Determine where other commas should go.
      # - Start new counter at 3.
      # - Push digit, subtract 1 from counter.
      # - When counter is done, push comma.
      # - If original array still has something in it, reset 2nd counter and repeat.
  # Rejoin elements into a new string that gets returned.


# 1. Initial Solution

=begin
def separate_comma(number)
  array = number.to_s.split(//)
  # p array
  if array.length <= 3
    final_answer = array.join("")
  else
    if array.length % 3 == 0
      first_counter = 3
    else
      first_counter = array.length % 3
    end
    counter = 3
    final_array = []
    while array.length > 0
      if first_counter > 0
        final_array.push(array[0])
        array.shift
        first_counter -= 1
        # puts "first counter: #{first_counter}"
      elsif first_counter == 0
        final_array.push(",")
        first_counter -= 1
        # puts "first counter: #{first_counter}"
      elsif counter > 0
        final_array.push(array[0])
        array.shift
        counter -= 1
        # puts "counter: #{counter}"
      elsif counter <= 0
        final_array.push(",")
        counter = 3
        # puts "counter: #{counter}"
      end
    end
  final_answer = final_array.join("")
  end
  return final_answer
end
=end



# 2. Refactored Solution

# It took me quite a while to refactor this.  I had to research a lot of different methods
# but finally realized I could do it with methods I already knew, but thought about starting
# at the back of the source array rather than the beginning.

# Refactoring Pseudocode:

  # Convert integer argument into a string.
  # Split string into characters and push into an array.
  # Count elements in the array.
  # If number of elements is 3 or less, we can rejoin the elements into a string and return it without adding commas.
  # If number of elements is 4 or more, we need to add commas.
  # Push elements to new array and add commas where appropriate.
    # - Count elements in array.
    # - If more than 3 elements, add last 3 elements from old array to front of new array, then add a comma to the new array.  Repeat until there are no longer more than 3 elements.
    # - Add remaining elements to front of new array.
  # Rejoin elements into a new string that gets returned.



def separate_comma(number)
  array = number.to_s.split(//)
  final_array = []
  if array.length <= 3
    final_answer = array.join("")
  else
    while array.length > 3
      final_array.unshift(array[-3,3])
      final_array.unshift(",")
      3.times {array.delete_at(-1)}
    end
    final_array.unshift(array[-array.length,array.length])
    final_answer = final_array.join("")
  end
  return final_answer
end




# 3. Reflection

# THIS IS MY REFLECTION FOR SOLO CHALLENGE 5.5:

# For this exercise we were required to write a program that accepted a
# integer and returned a string made up of number-digits and commas in
# the appropriate place.

# WE WERE ASKED TO ANSWER THE FOLLOWING QUESTIONS:

# 1) What was your process for breaking the problem down? What different approaches did you consider?

# It took me a while to wrap my mind around the logic in this problem.  My process for
# breaking the problem down was to first start writing psuedocode.  I basically looked at
# different loops and counters to get the desired effect.  In my initial solution I used
# two different counters: one to handle up to the first comma, and another to handle the
# rest.  I tried to refactor it and wasn't very successful.  On my 2nd try at refactoring I
# was able to be more efficient and thought about tackling the new array from the back
# rather than the front and it changed my whole approach.


# 2) Was your pseudocode effective in helping you build a successful initial solution?

# Writing pseudocode was definitely helpful.  Writing it out in English definitely made
# things make more sense.  I had to go back and re-write my pseudocode a few times because
# my initial tries didn't work or were messy.


# 3) What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

# One method I had used that I had heard of, but hadn't used much was .unshift, which adds
# elements to the front of arrays.  I also had never specified a group of elements in an
# array before, such as array[-3,3], so that was new to me.  After I discovered that, it
# made refactoring in this exercise much easier.


# 4) How did you initially iterate through the data structure?

# Initially I tried tackling the original array from the beginning and used a 'first counter' to handle up to the first comma, then a 2nd counter to handle everything else.  This was long and messy code.  When I refactored it, I started from the back of the array and used .unshift and .pop to manipulate two arrays I was working with.


# 5) Do you feel your refactored solution is more readable than your initial solution? Why?

# Definitely.  I think my refactored solution is more readable because it is shorter, and just is cleaner with how it loops.

