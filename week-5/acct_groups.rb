
# 5.6 CREATE ACCOUNTABILITY GROUPS

# PSEUDOCODE:

# Input:  The input for this exercise will be an array of strings.
# Output:  The output will be several arrays consisting of 3-5 strings in each array.

# Steps:

# Count the items in the array.
# Create a new array and randomly push 5 elements into the array.
# Repeat the counting, creating arrays, and pushing 5 elements until there are <10 elements remaining.
# When there are <10 elements remaining, divide them into arrays with 3 or 4 in each array.



# INITIAL SOLUTION:


# def acct_groups(names)
#   final_array = []
#   while names.length > 10
#     work_array = []
#     5.times do
#       x = rand(names.length)
#       work_array.push(names[x])
#       names.delete_at(x)
#     end
#     final_array.push(work_array)
#   end
#   work_array = []
#   (names.length/2).times do
#     x = rand(names.length)
#     work_array.push(names[x])
#     names.delete_at(x)
#   end
#   final_array.push(work_array)
#   work_array = []
#   names.length.times do
#     x = rand(names.length)
#     work_array.push(names[x])
#     names.delete_at(x)
#   end
#   final_array.push(work_array)
#   #make a pretty print of the arrays
#   puts ""
#   puts "~~~~~~~~~~~~"
#   puts "Your accountability groups are as follows:"
#   counter = 0
#   while counter < final_array.length
#     puts "Group #{counter + 1}:"
#     print final_array[counter]
#     puts ""
#     counter += 1
#   end
# end


# FINAL SOLUTION:

def pick_a_name(names, iterations)
  work_array = []
  iterations.times do
    x = rand(names.length)
    work_array.push(names[x])
    names.delete_at(x)
  end
  work_array
end

def pretty_print(final_array)
  puts ""
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "The accountability groups are:"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  counter = 0
  while counter < final_array.length
    print " * Group #{counter + 1}: #{final_array[counter]}"
    puts ""
    counter += 1
  end
end

def acct_groups(names)
  final_array = []
  while names.length > 10
    final_array.push(pick_a_name(names, 5))
  end
  final_array.push(pick_a_name(names, names.length/2))
  final_array.push(pick_a_name(names, names.length))
  pretty_print(final_array)
end


name_array = ["Alex Forger", "Alexander Nelson", "Karen Ball", "Christopher Bovio", "Gino Paul Capio",
"Jonathan Chin", "Claire Samuels", "Ray Curran", "David Louie", "David Spivey", "Max Davis",
"Devin Mandelbaum", "Afton Downey", "Jordan Fox", "Rebecca Gahart", "Gary Wong", "Hodges Glenn",
"Everett Golden", "Christopher Graf", "Alana Hanson", "LeeAnne Hawley", "Sabri helal",
"Thomas Huang", "Jeff Schneider", "Jillian Dunleavy", "Kevin Huang", "Khamla Phimmachack", "KT Khoo",
"Andrew Kim", "Joseph Kim", "Michal Klimek", "Nathan knockeart", "Brigitte Kozena", "Donald Lang",
"Tiffany Larson", "Liam Mackey", "Johanna Lonn", "Charlotte Manetta", "Tyler McKenzie",
"Katie Meyer", "Meagan Munch", "Lucas Nagle", "Lydia Nash", "Jovanka Nikolovski", "James O'Neal",
"Greg Park", "Patrick Oliphant", "Peter Lowe", "Lauren Reid", "Roche Janken", "David Rothschild",
"Susan Savariar", "Kurt Schlueter", "Sharon Claitor", "Marshall Sosland", "Catie Stallings",
"Steven King", "Eric Tenza", "Timur Catakli", "Todd Seller", "Dan Turcza", "Lindsey Ullman",
"Raj Vashist", "Violet Dang", "Chris Wong", "Angelika Yoder", "Michelle Zulli"]


acct_groups(name_array)


# REFLECTION

# This is my reflection for exercise 5.6: Create Accountability Groups

# We were asked to answer the following questions:

# 1) What was the most interesting and most difficult part of this challenge?
# This was one of my favorite challenges for the week.  I liked the open endedness of it.  Both the
# most interesting and most challenging were just getting the data organized and using a random number
# to select a name.  Figuring out how to push it into small groups, but not repeat a name.

# 2) Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Definitely, and this exercise helped.  I feel I improve with every exercise.

# 3) Was your approach for automating this task a good solution? What could have made it even better?
# I think that my refactored solution is a good solution, however I don't doubt there are better ways
# to do it.  As I've discovered by reviewing other people's code, there are many ways to tackle a
# problem, and there is always someone who comes up with a couple of lines of simple code to do a
# thing where I took a dozen.

# 4) What data structure did you decide to store the accountability groups in and why?
# I stored the data into an array of arrays.  This seemed to make the most sense to me since that seemed to be the closest thing to what we were actually trying to do.  I considered a hash where the key would be the name and the value was the group number, but ultimately decided an array of arrays would be easier to work with, and give me a closer representation of what I was actually after.

# 5) What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I didn't learn any new specific methods, but it was the first time other than GPS 2.2 that I had created multiple methods and passed information between them.
