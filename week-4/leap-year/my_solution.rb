# Leap Years

# I worked on this challenge with: Tiffany Larson.

# Your Solution Below



def leap_year?(year)
  if year < 4
    return false
  elsif year%400 == 0
    if year%100 == 0 && year%400 == 0
      return true
    end
  elsif year%4==0 && year%100 != 0
    return true
  else
    return false
  end
end