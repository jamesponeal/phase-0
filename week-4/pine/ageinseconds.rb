puts "~~~~~~~~~~"
puts "This program calculates your age in seconds."
puts "Please enter your age in years."
years = gets.chomp
days = years.to_i*365
hours = days.to_i*24
minutes = hours.to_i*60
seconds = minutes.to_i*60
puts "Your age in seconds is #{seconds}."
puts "~~~~~~~~~~"