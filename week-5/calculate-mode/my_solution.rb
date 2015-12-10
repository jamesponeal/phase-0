# Calculate the mode Pairing Challenge

# I worked on this challenge with: Katie Meyer

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
  # The input is an array of either strings or integers.

# What is the output? (i.e. What should the code return?)
  # The output should be an array consisting of the strings or integers that occur most
  # often in the original input array.  If there is a tie in the number of occurrances, then
  # the output array should contain each element with that number of occurrances.

# What are the steps needed to solve the problem?
  # Create a hash.
  # Iterate through original array and check if element in array exists as a key in hash.
    # If it doesn't exist, push it into hash with value of 1.
    # If it does exist, add 1 to the already existing value.
  # Find maximum value and push the associated key into an array.


# 1. Initial Solution

=begin
def mode(array)
  hash1 = {}
  # Create hash of elements in array and number of occurances
  array.each do |x|
    if hash1.key?(x) == false
      hash1[x] = 1
    else
      hash1[x] += 1
    end
  end
  # p hash1
  # Isolate highest value
  highest_mode = 0
  hash1.each_value do |z|
    if z > highest_mode
      highest_mode = z
    end
  end
  # Take key associated with highest value and push it to array.
  final_array = []
  # final_array.push(hash1.key(highest_mode))
  # p final_array
  hash1.each do |key,value|
    if value == highest_mode
      final_array.push(key)
    end
  end
  return final_array
end
=end

# array = [1,2,2,3,3]
# mode(array)


# 3. Refactored Solution

def mode(array)
  hash1 = {}
  array.each {|x| hash1.key?(x) == false ? hash1[x] = 1 : hash1[x] += 1}
  highest_mode = 0
  hash1.each_value {|z| highest_mode = z if z > highest_mode}
  final_array = []
  hash1.each {|key,value| final_array.push(key) if value == highest_mode}
  return final_array
end


# 4. Reflection


# 1) Which data structure did you and your pair decide to implement and why?
# We converted the original array into a hash consisting of the elements of the original
# array as keys and the occurance of each element as the value.  This seemed like the best
# way to get the data organized the way we needed it.

# 2) Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# My success at breaking this problem down with a pair was about the same as my success at my
# last pairing session.  I think I answered the question, but honestly I'm not even sure
# what this question is asking me...

# 3) What issues/successes did you run into when translating your pseudocode to code?
# The toughest issue was once we had the highest occurance of the value identified, getting
# the keys from the hash pushed into an array.  After we got the correct commands figured
# out and had working code it seemed simple, but we spent a lot of time figuring that one
# step out.

# 4) What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We used .each on the original array, and .each_value on the hash.  We didn't get too fancy
# on this one.

