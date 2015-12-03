# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  if list_of_integers == []
    return 0
  else
    test_array = []
    list_of_integers.each do |test|
      if test >= lower_bound && test <= upper_bound
        test_array.push(test)
      end
    end
    return test_array.length
  end
end

#list_of_integers = [-1,2,3,300]
#lower_bound = 0
#upper_bound = 100
#count_between(list_of_integers, lower_bound, upper_bound)
