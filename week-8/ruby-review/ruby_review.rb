# I worked on this challenge by myself.
# This challenge took me [#] hours.


# PSEUDOCODE:
  # Iterate through the array of integers.
  # Create a new array.
  # Check to see if the integer is evenly divisible by 3, 5, or both 3 and 5.
  # If it is divisible by both 3 and 5, push "FizzBuzz" into the new array.
  # If it is divisible by 3 only, push "Fizz" into the new array.
  # If it is divisible by 5 only, push "Buzz" into the new array.
  # If it is divisible by neither 3 nor 5, push the number into the new array.


# INITIAL SOLUTION:

# def super_fizzbuzz(array)
#   new_array = []
#   array.each do |x|
#     if (x%3) == 0 && (x%5) == 0
#       new_array.push("FizzBuzz")
#     elsif x % 5 == 0
#       new_array.push("Buzz")
#     elsif x % 3 == 0
#       new_array.push("Fizz")
#     else
#       new_array.push(x)
#     end
#   end
#   p new_array
# end

#super_fizzbuzz([1,2,3,4,5,15,89])


# REFACTORED SOLUTION:

def super_fizzbuzz(array)
  array.map! do |x|
    if x%3 == 0 && x%5 == 0
      "FizzBuzz"
    elsif x%5 == 0
      "Buzz"
    elsif x%3 == 0
      "Fizz"
    else
      x
    end
  end
end



# REFLECTION:

# What concepts did you review or learn in this challenge?
  # Since it had been a couple of weeks since I've done anything in Ruby, iterating
  # through an array using .map was something that I had to review.


# What is still confusing to you about Ruby?
  # I feel like I have a pretty good handle on Ruby right now but I could definitely
  # benefit from more practice with classes, modules, and superclasses.


# What are you going to study to get more prepared for Phase 1?
  # I am going to work as many challenges as possible. Work on something involving
  # classes, super-classes and modules, and work on writing my own rspec files.

