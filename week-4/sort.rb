def sort(array)
  test_array = []
  test_array.push(array[0])
  puts array
  puts ""
  puts test_array
  array.each do |test|
    if test.length < test_array[0].length
      test_array.pop
      test_array.push(test)
    end
  end
  puts ""
  puts test_array
end


list_of_words = ["zebra", "a", "rhinocerous", "gorilla", "monkey"]
sort(list_of_words)
