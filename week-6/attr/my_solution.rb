#Attr Methods

# I worked on this challenge by myself.

# I spent [#] hours on this challenge.

# PSEUDOCODE:

# Input:  There is no input for this code.  We are only creating a new instance and
  # then calling a method.
# Output:  The output will be printing a string to the terminal.
# Steps:
  # Add :name as an attr_accessor in NameData and Greetings.
  # Create an initialize in NameData that sets @name equal to my name.
  # Create a 'hello' method in Greetings that prints a string to the console that
    # includes the @name instance variable.

# SOLUTION:

class NameData
  attr_accessor :name
  def initialize
    @name = 'Jim O\'Neal'
  end
end

class Greetings
  attr_accessor :name
  def initialize
    @namedata = NameData.new
  end

  def hello
    p "Hello #{@namedata.name}! Have a great day!!"
  end
end

greet = Greetings.new
greet.hello



# REFLECTION

# Release 1:

# 1.1 What are these methods doing?
  # These methods are basically "getter" and "setter" methods for the 'Profile' class.  They
  # are methods that just allow certain instance variables to be set and read back.

# 1.2 How are they modifying or returning the value of instance variables?
  # They are modifying instance variables by accepting an argument and then setting the
  # instance variable to that argument.  The driver code is using a 'syntactic sugar' syntax
  # by utilizing the "instance.method_name = new_value" syntax.  They are returning the
  # values by just returning the instance variable inside the standard method definition.

# Release 2:

# 2.1 What changed between the last release and this release?
  # As far as the output, nothing changed.  As far as the code goes, the "what_is_age"
  # method was replaced by attr_reader :age.

# 2.2 What was replaced?
  # The "what_is_age" method was replaced by attr_reader :age.

# 2.3 Is this code simpler than the last?
  # I think the code is definitely simpler and easier to read.

# Release 3:

# 3.1 What changed between the last release and this release?
  # Nothing changed in the output.  In the code, the change_my_age method was replaced
  # by attr_writer :age.

# 3.2 What was replaced?
  # The change_my_age method was replaced by attr_writer :age.

# 3.3 Is this code simpler than the last?
  # The new code is definitely simpler, cleaner, and easier to read compared to the
  # original.


# Release 6:

# 6.1 What is a reader method?
  # A reader method is a method that returns a variable.

# 6.2 What is a writer method?
  # A writer method is a method that allows you to reassign a variable by passing
  # in an argument.

# 6.3 What do the attr methods do for you?
  # The attr methods allow you to shorten and simplify code by combining several
  # lines of code into one line.

# 6.4 Should you always use an accessor to cover your bases? Why or why not?
  # No because you may not want certain variables to have the capability of being
  # reassigned.

# 6.5 What is confusing to you about these methods?
  # There isn't anything confusing about them, I understand how they work, but I'm
  # still a little apprehensive about them only because they are new.  As I used them
  # more they will become more familiar.


