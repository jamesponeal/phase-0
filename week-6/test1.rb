item_to_make = 5
hash1 = {"cookie" => 1, "cake" =>  5, "pie" => 7}
error_counter = 3

hash1.each_key do |x|
  puts x
  if x != hash1[item_to_make]
    error_counter += -1
    puts error_counter
  end
end
puts "final #{error_counter}"
