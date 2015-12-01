###Lesson 4.2: Numbers, Letters, and Variable Assignment

In Release 1 of this lesson we were asked to answer the following questions:

####1. What does puts do?
The puts command displays an output to the console on a new line.

####2. What is an integer? What is a float?
An integer is a whole number with no decimals.
A float is number with a decimal.

####3. What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
When you divide an integer and integer will always be returned and ruby will round down to the nearest integer.  When you divide a float, a float will always be returned.  The integer division might be confusing at first, but it is really very simple.  If you divide 9 by 2, 4 will be returned, this is because 9 / 2 = 4.5 which is rounded down to 4.

###Below are my ruby programs for the exercises in section 2.5 in Chris Pine's book:

Hours in a Year:
```ruby
puts "~"*10
hours = 24*365
puts "There are #{hours} hours in a standard 365 day year."
puts "~"*10
```

Minutes in a Decade:
```ruby
puts "~"*10
minutes = 60*24*365*10
puts "There are #{minutes} minutes in ten 365 day years."
puts "~"*10
```

###After completing the exercises, we were asked to answer the following questions:

####1. How does Ruby handle addition, subtraction, multiplication, and division of numbers?
This is fairly straight-forward.  Ruby handles mathematical operations like a calculator.  It adds, subtracts, multiplies and divides when the common symbols are used.  The main thing to be aware of is that when integers are used as input, the output will also be an integer, and when floats are input, the result will be a float.  This is most important for inputing integers for division since the answer will be rounded down.

####2. What is the difference between integers and floats?
An integer is a whole number with no decimals.
A float is number with a decimal.

####3. What is the difference between integer and float division?
When you divide an integer and integer will always be returned and ruby will round down to the nearest integer.  When you divide a float, a float will always be returned.  The integer division might be confusing at first, but it is really very simple.  If you divide 9 by 2, 4 will be returned, this is because 9 / 2 = 4.5 which is rounded down to 4.

####4. What are strings? Why and when would you use them?
A string is a group of letters and/or words which do not hold a value or a meaning within the context of Ruby or the specific program you are working with.  They are commonly used to display information to the user, or as inputs to some function in a program.

####5. What are local variables? Why and when would you use them?
A local variable is a name assigned to some string or value so that it can be stored and recalled later to use in another part of a program.  They are very useful if a certain string or value is to be used more than once.

####6. How was this challenge? Did you get a good review of some of the basics?
This challenge was fairly straight forward and not difficult, but definitely a good review of basic concepts since my Ruby feels a little rusty.


###Links to individual exercises:

[Defining Variables](https://github.com/jamesponeal/phase-0/blob/master/week-4/defining-variables.rb)

[Simple String](https://github.com/jamesponeal/phase-0/blob/master/week-4/simple-string.rb)

[Basic Math](https://github.com/jamesponeal/phase-0/blob/master/week-4/basic-math.rb)
