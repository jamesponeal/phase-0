# Numbers to Commas Solo Challenge

# I spent [5] hours on this challenge.

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

# I went through my code, used online resources to look for some built-in
# methods that I could use to shorten and simplify my code.  I was
# unsuccessful at finding anything.


def separate_comma(number)
  array = number.to_s.split(//)
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
      if first_counter > 0 #If > 0, it's not time to push first comma yet.
        final_array.push(array[0])
        array.shift
        first_counter -= 1
      elsif first_counter == 0 #If first counter hits zero, push first comma.
        final_array.push(",")
        first_counter -= 1
      elsif counter > 0 #If counter > 0, keep pushing digits.
        final_array.push(array[0])
        array.shift
        counter -= 1
      elsif counter <= 0 #If counter hits zero, push comma, reset counter.
        final_array.push(",")
        counter = 3
      end
    end
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

# It took me a while to wrap my mind around the logic in this problem.  My process for breaking the problem down was to first start writing psuedocode.  I basically looked at different loops and counters to get the desired effect.  Finally I realized that I needed (or think I need) two different counters: one to handle up to the first comma, and another to handle the rest.


# 2) Was your pseudocode effective in helping you build a successful initial solution?

# - Writing pseudocode was definitely helpful.  Writing it out in English definitely made things make more sense.  I had to go back and re-write my pseudocode a few times because my initial tries didn't work.


# 3) What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

# Unfortunately I was unsuccessful at refactoring.  I spent some time thinking about each step I used, how they might be combined, and researched methods on ruby-doc.org that I might use but could not come up with a way to simplify it.


# 4) How did you initially iterate through the data structure?

# Initially I just tried to use one counter, but since the number of digits before the first comma could be either 1, 2, or 3 digits, I could not find a way to do this using one counter.  I resorted to using a 'first counter' to handle up to the first comma, then a 2nd counter to handle everything else.


# 5) Do you feel your refactored solution is more readable than your initial solution? Why?

# Unfortunately, no, it's the same.  I could not find a solution that simplified my code.

