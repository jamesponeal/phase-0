# I worked on this challenge by myself.
# This challenge took me [#] hours.

# PSEUDOCODE:
  # Create a new array.
  # Generate fibonacci numbers and push them into the new array until the generated numbers are greater than or equal to the number passed in.
  # If the passed in number is equal to a fibonacci number then the number is fibonacci.


# INITIAL SOLUTION:

# def is_fibonacci?(num)
#   newarray = [0,1]
#   x = 0
#   while num > x
#     x = newarray[-1] + newarray[-2]
#     newarray.push(x)
#   end
#   newarray.include?(num)
# end

#is_fibonacci?(55)



# REFACTORED SOLUTION:

def is_fibonacci?(num)
  newarray = [0,1]
  x = 0
  while num > x
    x = newarray[-1] + newarray[-2]
    newarray.push(x)
  end
  newarray.include?(num)
end




# REFLECTION: