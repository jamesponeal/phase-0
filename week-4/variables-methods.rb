# Full name greeting program (Chris Pine 5.6)
puts "~" * 10
puts "What is your first name?"
first = gets.chomp
puts "What is your middle name?"
middle = gets.chomp
puts "What is your last name?"
last = gets.chomp
puts "Hello, " + first + " " + middle + " " + last + "!"
puts "~" * 10
puts " "
# Bigger better favorite number program (Chris Pine 5.6)
puts "~" * 10
puts "What is your favorite number?"
number = gets.chomp.to_i
newnum = number + 1
puts "That's a good number, but I think you might like " + newnum.to_s + " better!"
puts "~" * 10
