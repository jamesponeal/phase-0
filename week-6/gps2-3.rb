# Your Names
# 1) Jim O'Neal
# 2) Lauren Reid

# We spent [2] hours on this challenge.



# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  # setting variables to use within the method
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 0
  # iterating through the library hash, comparing  the items in the library to the item_to_make that we passed into the method. If they do not match, then it subtracts from the error counter.
  library.each_key do |food|
    if food == item_to_make
      error_counter += 1
    end
  end
  # if the error counter doesn't get to zero, it meants that the item_to_make is not in the library and can't be made, returning an error message
  if error_counter == 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  # creating new variable serving_size which is the value/number of ingredients we need to make 1 of any of the item_to_make
  req_num_ingredients = library.values_at(item_to_make)[0]
  # creating new variable remaining_ingredients which is the remainder of ingredients after we determine how many servings the num_of_ingriedents can make
  remaining_ingredients = num_of_ingredients % req_num_ingredients
  # case statement that if the remaining ingredients is 0, it returns a sentence telling us how many of the items_to_make were made

  suggested_items = library.find_all { |food, ing| remaining_ingredients >= ing }.to_h
  list_of_sug = ""
  suggested_items.each do |food,num|
    list_of_sug.concat(food.to_s.capitalize + " (takes ")
    list_of_sug.concat(num.to_s + " ingredient(s)), ")
  end
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / req_num_ingredients} of #{item_to_make}"
    # otherwise return the number of items made and how many ingredients remain and suggest other items to be made.
  else
    return "Calculations complete: Make #{num_of_ingredients / req_num_ingredients} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{list_of_sug.chop.chop}"
  end
end

# Driver code - calling the method with explicit and printed examples to verify the code
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 12)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

# REFLECTION

# THIS IS MY REFLECTION FOR GPS 2.3:

# 1) What did you learn about making code readable by working on this challenge?
# I definitely learned the value of making code readable.  I found that pieces of the existing code
# were really tough to understand.  It's important for code to be readable so that if others need to
# edit your code they can easily do so.

# 2) Did you learn any new methods? What did you learn about them?
# I had not used .concat much and had never used .chop.  My pair suggested using both of these and
# they worked great.  I became more comfortable with .concat and learned about the existence of .chop.

# 3) What did you learn about accessing data in hashes?
# I was already fairly comfortable with accessing data in hashes, but I would say the one thing I learned is that using .each on a hash and then only using one object in your iteration is confusing to me.  If you're goint to use .each, you should be iterating over both key and value, otherwise use .each_key or .each_value.

# 4) What concepts were solidified when working through this challenge?
# The main one for me is just be sure you're writing readable code that is simple and makes sense.

