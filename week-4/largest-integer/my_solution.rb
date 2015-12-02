# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

def largest_integer(list_of_nums)
  if list_of_nums ==[]
    puts "nil"
    return nil
  else
    test_array = []
    test_array.push(list_of_nums[0])
    list_of_nums.each do |test|
      if test > test_array[0]
        test_array.pop
        test_array.push(test)
      end
    end
    puts test_array[0]
    return test_array[0]
  end
end

