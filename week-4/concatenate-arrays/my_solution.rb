# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  array_2.each do |x|
    array_1.push(x)
  end
  return array_1
end

#array_1 = [8,4,23,6]
#array_2 = ["milk", "eggs", "coffee", "tea"]
#array_concat(array_1, array_2)
