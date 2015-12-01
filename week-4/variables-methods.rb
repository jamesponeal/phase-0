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


# ~~~ This is my reflection for Lesson 4.3: ~~~

# We were asked to answer the following questions:

# 1. ~ How do you define a local variable?
# A local variable is a name assigned to some string or value so that it can be stored and recalled later to use in another part of a program.  They are very useful if a certain string or value is to be used more than once.

# 2. ~ How do you define a method?
# As Chris Pine would say, a method is a thing that does stuff.  To make an analogy to the English language, a method is like a verb.  It is an action that is done on an object (a noun).

# 3. ~ What is the difference between a local variable and a method?
# The two are very different.  A local variable is just a name assigned to a string or value.  A method is an action.  Methods can take variables as parameters, and can manipulate variables.

# 4. ~ How do you run a ruby program from the command line?
# To run a ruby program from the command line, type "ruby filename.rb", where "filename" is the name of the file you want to run.

# 5. ~ How do you run an RSpec file from the command line?
# To run an rspec file from the command line, type "rspec filename.rb", where "filename" is the name of the rspec file you want to run. In the examples we have done so far "_rspec" was included at the end of the filename.

# 6. ~ What was confusing about this material? What made sense?
# The thing that I got hung up on was trying to run my first rspec file, that was partly because I screwed up and copied the wrong file from the GitHub repo into my local file, but also because I felt the instructions were confusing.  After I got it, then it was easy.

# Finally, we were asked to provide a link to our solution files for 4.3.  I have copied and pasted mine below:

# Return A Formatted Address:
# https://github.com/jamesponeal/phase-0/blob/master/week-4/address/my_solution.rb

# Defining Math Methods:
# https://github.com/jamesponeal/phase-0/blob/master/week-4/math/my_solution.rb
