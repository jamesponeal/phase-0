# Simple Substrings

# I worked on this challenge with: Tiffany Larson.


# Your Solution Below

def welcome(address)
  final_array = address.upcase.split(" ")
  if final_array.include?("CA")
    return "Welcome to California"
  else
    return "You should move to California"
  end
end

