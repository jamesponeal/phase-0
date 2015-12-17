# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Tiffany Larson.
# I spent [2] hours on this challenge.

# PSEUDOCODE:

# Input:  An integer.
# Output:  True or false.
# Steps:
  # Put integer into a container so that each digit is an element in the container.
  # Reverse order of elements in container.
  # Iterate through every other element in the container and double it.
  # If any integers have become two digit numbers after doubling, split that number into two separate elements.
  # Find sum of all elements in the container.
  # If sum is divisible by 10 with no remainder, then return true. Otherwise return false.


# INITIAL SOLUTION:

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   def initialize(card_number)
#     @card_number = card_number
#     @working_array =[]
#     number_of_digits
#   end

#   def number_of_digits
#     if @card_number.to_s.length > 16 || @card_number.to_s.length < 16
#       raise ArgumentError.new("Incorrect card number!!!")
#     end
#   end

#   def reverse_and_double
#     # puts "Before"
#     # p @working_array
#     @working_array = @card_number.to_s.split(//).reverse
#     @working_array.map!.with_index do |element, index|
#       if index.odd?
#         element.to_i * 2
#       else
#         element.to_i
#       end
#     end
#     # puts "After reverse and double"
#     # p @working_array
#   end

#   def break_up_nums
#     reverse_and_double
#     @working_array.map! do |element|
#       if element >= 10
#         @working_array << 1
#         element -= 10
#       else
#         element
#       end
#     end
#     puts "After break up nums"
#     # p @working_array
#   end

#   def check_card
#     break_up_nums
#     sum = @working_array.inject {|sum,n| sum + n}
#     puts "sum:"
#     # p sum
#     if sum % 10 == 0
#       p true
#     else
#       p false
#     end
#     # p @working_array
#     # p sum
#   end

# end

# number = 4408041234567901

# new_card = CreditCard.new(number)
# new_card.check_card


# FINAL SOLUTION:

class CreditCard

  def initialize(card_number)
    @card_number = card_number
    @working_array =[]
    number_of_digits
  end

  def number_of_digits
    if @card_number.to_s.length > 16 || @card_number.to_s.length < 16
      raise ArgumentError.new("Incorrect card number!!!")
    end
  end

  def reverse_and_double
    @working_array = @card_number.to_s.split(//).reverse
    @working_array.map!.with_index do |element, index|
      if index.odd?
        element.to_i * 2
      else
        element.to_i
      end
    end
  end

  def break_up_nums
    reverse_and_double
    @working_array.map! do |element|
      if element >= 10
        @working_array << 1
        element -= 10
      else
        element
      end
    end
  end

  def check_card
    break_up_nums
    sum = @working_array.inject {|sum,n| sum + n}
    if sum % 10 == 0
      true
    else
      false
    end
  end

end


# REFLECTION:

# 1) What was the most difficult part of this challenge for you and your pair?
  # The most difficult part for me was figuring out how to split the doubled digit.
  # My awesome pair came up with a simple way to do it.

# What new methods did you find to help you when you refactored?
  # We used the .inject method, which was my first time using it. This method was
  # very useful for summing the numbers.

# What concepts or learnings were you able to solidify in this challenge?
  # The concept of creating and calling methods inside a class was definitely solidified
  # in this challenge.  Also, the idea of keeping a method simple and only having one
  # purpose so that it can be modular and easy to understand.


