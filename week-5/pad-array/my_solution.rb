# Pad an Array

# I worked on this challenge with: Tiffany Larson.

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# The input is an array, a minimum size, and possibly a value.

# What is the output? (i.e. What should the code return?)
# The output is an array made up of the original array and a number of elements made up of the value until the final size of the array is equal to the minimum size.


# What are the steps needed to solve the problem?
# Check size of original array.
# Compare size of array to minimum size.
# IF size of array is the same or larger than minimum size, then RETURN the original array.
# If the minimum size is greater than the array, add the value (or nil) until the minimum size is met.



# 1. Initial Solution
# def pad!(array, min_size, value = nil)
#   if array.length >= min_size
#     return array
#   else
#     while array.length < min_size
#       array.push(value)
#     end
#     return array
#   end
# end


# def pad(array, min_size, value = nil)
#   new_array = []
#   array.each {|x| new_array.push(x)}
#   if new_array.length >= min_size
#     return new_array
#   else
#     while new_array.length < min_size
#       new_array.push(value)
#     end
#     return new_array
#   end
# end


# 3. Refactored Solution


def pad!(array, min_size, value = nil)
  if array.length >= min_size
  else
    while array.length < min_size
      array.push(value)
    end
  end
  return array
end


def pad(array, min_size, value = nil)
  new_array = array.collect {|x| x }
  if new_array.length >= min_size
  else
    while new_array.length < min_size
      new_array.push(value)
    end
  end
  return new_array
end


# 4. Reflection


# 1) Were you successful in breaking the problem down into small steps?
# We were successful at breaking the problem down during our pseudocoding process and
# writing it out in plain english.  After that it was easy to convert it into code.


# 2) Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# I think we were very successful at converting our pseudocode into code.  I feel that our pseudocode was very well written.  After writing our initial code, we had some difficulty because we had our return statement in the wrong place.  After that was fixed everything worked.


# 3) Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# After working through a few minor errors, our intitial solution worked.  Our main error that we had to work through was putting our return statement in the correct spot, we had it inside the while loop at first and that was giving us problems.


# 4) When you refactored, did you find any existing methods in Ruby to clean up your code?
# When we refactored, we used the .collect method to iterate through the passed in array and to create a new array.


# 5) How readable is your solution? Did you and your pair choose descriptive variable names?
# I feel that our final solution is very readable.  For the variable we used to iterate through the passed in array, my pair and I chose 'x' simply because it was a variable that wasn't used for anything else, and we feel that it is easier and more readable to make this variable have a name that doesn't mean anything.


# 6) What is the difference between destructive and non-destructive methods in your own words?
# A destructive method modifies the argument that was passed in.  A non-destructive method does not modify the original argument.

