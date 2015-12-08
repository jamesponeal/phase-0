# RELEASE 1: PSEUDOCODE

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# create a new hash
# split input string by spaces into individual items
#
# set default quantity to be 1
# iterate through individual items, add each to hash as a key with a value of default
  # print the list to the console [can you use one of your other methods here?]
# output: the new hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: create a new key in the list with the item
# either set the quantity to default or optional parameter
# output: the updated hash

# Method to remove an item from the list
# input: item name
# steps: remove item from hash
# output: the updated hash

# Method to update the quantity of an item
# input: item name and new quantity
# steps: update value that corresponds to items key
# output: the updated hash

# Method to print a list and make it look pretty
# input: hash
# steps: iterate through hash and print key/value pairs
# output: the pretty-printed hash


# RELEASE 2, 3, 4: INITIAL SOLUTION, TEST, REFACTOR:

def create_list(groceries)
  default_qty = 1
  grocery_list = {}
  groceries.split(" ").each {|grocery| grocery_list[grocery] = default_qty}
  p grocery_list
end
current_list = create_list("apple bananas carrot")

def add_item(grocery_list, grocery, qty = 1)
  grocery_list[grocery] = qty
  p grocery_list
end
add_item(current_list, "orange", 5)

def remove_item(grocery_list, grocery)
  grocery_list.delete(grocery)
  p grocery_list
end
remove_item(current_list, "bananas")

def update_qty(grocery_list, grocery, new_qty)
  grocery_list[grocery] = new_qty
  p grocery_list
end
update_qty(current_list, "orange", 15)

def pretty_print(grocery_list)
  puts " "
  puts "~~~~~~~~~~"
  puts "Your super awesome grocery list contains:"
  grocery_list.each {|key, value| puts "#{value} #{key}"}
  puts "~~~~~~~~~~"
  puts " "
end
pretty_print(current_list)


# REFLECTION FOR GPS 2.2:

# This is my reflection for GPS 2.2.  In this reflection, we were asked to answer the following questions:

# 1) What did you learn about pseudocode from working on this challenge?
# I definitely learned the value of having good pseudocode.  I also learned that sometimes as you start
# writing code, the way you envisioned things working while you wrote your psuedocode doesn't work and
# your code will stray slightly from the psuedocode.

# 2) What are the tradeoffs of using Arrays and Hashes for this challenge?
# I definitely think using a hash is the way to go for this challenge.  Using an array does not associate
# a quantity with the item, so it would be much more difficult (maybe impossible) to have done this
# challenge using only arrays.

# 3) What does a method return?
# A method does not necessarily return anything unless you explicity tell it to.

# 4) What kind of things can you pass into methods as arguments?
# Things that can be passed into a method: strings, integers, arrays, hashes, variables, and probably a
# lot of other things that I'm not thinking of right now.

# 5) How can you pass information between methods?
# You can pass information using arguments.  If you create something in one method and store it as a
# variable outside of the method, that variable can then be passed into other methods.

# 6) What concepts were solidified in this challenge, and what concepts are still confusing?
# The concept of passing information between methods was definitely solidified.  Seeing how the
# information from one method could be stored in a variable and passed was very useful in understand how
# methods work.



