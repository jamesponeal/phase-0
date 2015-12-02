# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The name of the file is errors.rb.

# 2. What is the line number where the error occurs?
# According to the error message, the line number is 170.

# 3. What is the type of error message?
# Syntax error.

# 4. What additional information does the interpreter provide about this type of error?
# There is an unexpected end-of-input, it was expecting the keyword 'end'.

# 5. Where is the error in the code?
# The error message is indicating that the error is occuring after the last line of the code.

# 6. Why did the interpreter give you this error?
# The interpreter gave me this error because there is a while loop that does not end.  The interpreter is looking for an end to the while loop and never finds one.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# Line number 41.

# 2. What is the type of error message?
# Undefined local variable or method.

# 3. What additional information does the interpreter provide about this type of error?
# The undefined local variable or method is called 'south_park'.

# 4. Where is the error in the code?
# At line 41, it says 'south_park' but nothing has defined what 'south_park' is.

# 5. Why did the interpreter give you this error?
# The interpreter gave this error because line 41 is calling 'south_park' but this has not been defined.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# Line number 60.

# 2. What is the type of error message?
# Undefined method.

# 3. What additional information does the interpreter provide about this type of error?
# The undefined method is 'cartman'.

# 4. Where is the error in the code?
# At line 60 with the method 'cartman'.

# 5. Why did the interpreter give you this error?
# The interpreter gave this error because cartman is completely undefined.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# Errors in lines 79 and 83.

# 2. What is the type of error message?
# Wrong number of arguments.

# 3. What additional information does the interpreter provide about this type of error?
# (1 for 0) which means the method was passed 1 argument, but the method is set up to receive 0 arguments.

# 4. Where is the error in the code?
# cartmans_phrase was called and passed an argument, but the method is not set up to receive an argument.

# 5. Why did the interpreter give you this error?
# cartmans_phrase was called and passed an argument, but the method is not set up to receive an argument.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# Line numbers 102 and 106.

# 2. What is the type of error message?
# Wrong number of arguments.

# 3. What additional information does the interpreter provide about this type of error?
# (1 for 0) which means the method was passed 0 arguments, but the method is set up to receive 1 argument.

# 4. Where is the error in the code?
# cartman_says was called but an argument was not passed in.  The method requires an argument.

# 5. Why did the interpreter give you this error?
# cartman_says was called but an argument was not passed in.  The method requires an argument.




# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# Lines 128 and 132.
# 2. What is the type of error message?
# Wrong number of arguments.
# 3. What additional information does the interpreter provide about this type of error?
# (1 for 2)
# 4. Where is the error in the code?
# The method carmans_lie requires 2 arguments to be passed in but was only passed 1 argument.
# 5. Why did the interpreter give you this error?
# The wrong number of arguments were passed to the method.  Requires 2 and passed only 1.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# Line 147.
# 2. What is the type of error message?
# String can't be coerced into Fixnum.
# 3. What additional information does the interpreter provide about this type of error?
# (TypeError) which means basically we're trying to do something with a type of entity that can't do the thing that we are asking it to do.  It's not the right type of thing.
# 4. Where is the error in the code?
# We are multiplying 5 by a string.  It can work the other way around, but you can't ask for "Respect my athoritay!" number of 5's.
# 5. Why did the interpreter give you this error?
# We are multiplying 5 by a string.  It can work the other way around, but you can't ask for "Respect my athoritay!" number of 5's.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# Line 162.
# 2. What is the type of error message?
# Zero division error.
# 3. What additional information does the interpreter provide about this type of error?
# Not really anything else.  We tried to divide by zero. Pretty self-explanatory.
# 4. Where is the error in the code?
# A variable is assigned to 20 divided by 0.  You can't divide something by zero.
# 5. Why did the interpreter give you this error?
# Because you can't divide by zero.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 178.
# 2. What is the type of error message?
# require_relative': cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.