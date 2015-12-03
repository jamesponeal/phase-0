# I worked on this challenge with Tiffany Larson.

# Your Solution Below

def valid_triangle?(a, b, c)
  if a==0 || b==0 || c==0
    return false
  elsif a+b>c && a+c>b && b+c>a
    return true
  else
    return false
  end
end

#a=5
#b=3
#c=40
#valid_triangle?(a,b,c)