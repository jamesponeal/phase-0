# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Tiffany Larson.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array
# Output: sum or elements of array
# Steps to solve the problem.


# 1. total initial solution

def total(array)
  final_solution = 0
  array.each do |x|
    final_solution += x
  end
  #puts final_solution
  return final_solution
end

#array = [1,2,3]
#total(array)


# 3. total refactored solution
# I have refactored it as much as I can.


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array
# Output: string
# Steps to solve the problem.




# 5. sentence_maker initial solution

def sentence_maker(array)
  final = array.join(" ") + "."
  return final.capitalize
end



# 6. sentence_maker refactored solution
# We have refactored this as much as we can.
