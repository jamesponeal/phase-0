###Lesson 4.2: Numbers, Letters, and Variable Assignment

In this lesson we were asked to answer the following questions:

####What does puts do?
The puts command displays an output to the console on a new line.

####What is an integer? What is a float?
An integer is a whole number with no decimals.
A float is number with a decimal.

####What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
When you divide an integer and integer will always be returned and ruby will round down to the nearest integer.  When you divide a float, a float will always be returned.  The integer division might be confusing at first, but it is really very simple.  If you divide 9 by 2, 4 will be returned, this is because 9 / 2 = 4.5 which is rounded down to 4.

####Below are my ruby programs for the exercises in section 2.5 in Chris Pine's book:

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
