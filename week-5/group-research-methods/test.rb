
i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


# ARRAY FINDING METHOD

## PSEUDOCODE:

  ## Iterate through array.
    ## Take each item in array and split it into characters.
    ## Compare each character to the 'thing to find'.
    ## If the item contains the 'thing to find' then push that item into the final array.

## INITIAL SOLUTION: (AKA... Long and ugly code!!)

# def my_array_finding_method(source, thing_to_find)
#   final_array = []
#   source.each do |test|
#     temp_array = test.to_s.split(//)
#     temp_array.each do |test2|
#       if test2 == thing_to_find.to_s
#         final_array.push(test)
#       end
#     end
#   end
#   p final_array
# end


## FINAL SOLUTION:

def my_array_finding_method(source, thing_to_find)
  p final_array = source.select {|test| test.to_s.include?(thing_to_find.to_s)}
end


my_array_finding_method(i_want_pets, "t")
my_array_finding_method(i_want_pets, 2)



# HASH FINDING METHOD

## PSEUDOCODE:

  ## Iterate through the hash.
    ## Take each value and compare to the 'thing to find'.
    ## If the value contains the 'thing to find' then push the key into the final array.

## INITIAL SOLUTION:

# def my_hash_finding_method(source, thing_to_find)
#   final_array = []
#   source.each do |key, value|
#     if value == thing_to_find
#       final_array.push(key)
#     end
#   end
#   p final_array
# end

## FINAL SOLUTION:

def my_hash_finding_method(source, thing_to_find)
  final_answer = source.select{|key, value| value == thing_to_find}
  p final_answer.keys
end



my_hash_finding_method(my_family_pets_ages, 3)
my_hash_finding_method(my_family_pets_ages, 12)


