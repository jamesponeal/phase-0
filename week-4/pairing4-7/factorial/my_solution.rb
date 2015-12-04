# Factorial

# I worked on this challenge with: Tiffany Larson.


# Your Solution Below

def factorial(number)
  if number == 0
    return 1
  else
    product = number
    while number > 1
      product = product * (number - 1)
      number = number-1
    end
    puts product
    return product
  end
end

#number = 5
#factorial(number)
