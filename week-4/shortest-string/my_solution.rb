# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(array)
  test_array = []
  test_array.push(array[0])
  array.each do |test|
    if test.length < test_array[0].length
      test_array.pop
      test_array.push(test)
    end
  end
  puts test_array[0]
  return test_array[0]
end


#list_of_words = ["super-zebra", "aardvark", "rhinocerous", "gorilla", "monkey"]
#shortest_string(list_of_words)
