array = ["north", "east", "south", "west"]

puts array[0]

puts "What direction do you want to turn? (right/left)"
answer = gets.chomp
if answer == 'right'
  array.rotate!
elsif answer == 'left'
  array.rotate!(-1)
end

puts array[0]

