
test_array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

word = "word"

# puts ""
# puts test_array.length
# print test_array
# puts ""

def acct_groups(names)
  work_array = []
  5.times do
    x = rand(names.size)
    puts "Random number is: #{x}"
    work_array.push(names[x])
    print "work array is: #{work_array}"
    puts " "
    names.delete_at(x)
    print "starting array is: #{names}"
    puts " "
  end
end


acct_groups(test_array)

