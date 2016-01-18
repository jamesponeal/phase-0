# Numbers to English Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode




# Initial Solution


hash = {
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen',
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety",
}

# def num_to_words(number, hash)
#   if number <= 19 || (number%10 == 0 && number < 100)
#     puts hash[number]
#   elsif number.to_s.length == 2
#     array = []
#     array = number.to_s.split(//)
#     array.insert(1, '0')
#     temp_array = []
#     temp_array.push(array.shift(2))
#     array.unshift(temp_array.join)
#     puts "#{hash[array[0].to_i]}-#{hash[array[1].to_i]}"
#   elsif number.to_s.length == 3
#     array = []
#     array = number.to_s.split(//)
#     array.insert(2, '0')
#     temp_array = array[1,2].join.split
#     temp_array.push(array.pop)
#     temp_array.unshift(array.shift)
#     puts "#{hash[temp_array[0].to_i]} hundred #{hash[temp_array[1].to_i]} #{hash[temp_array[2].to_i]}"
#   elsif (number.to_s.length == 4 && number%1000 != 0)
#     array = []
#     array = number.to_s.split(//)
#     array.insert(3, '0')
#     temp_array = array[2,2].join.split
#     temp_array.push(array.pop)
#     temp_array.unshift(array[1])
#     temp_array.unshift(array[0])
#     puts "#{hash[temp_array[0].to_i]} thousand #{hash[temp_array[1].to_i]} hundred #{hash[temp_array[2].to_i]} #{hash[temp_array[3].to_i]}"
#   elsif (number.to_s.length == 4 && number%1000 == 0)
#     array = []
#     array = number.to_s.split(//)
#     puts "#{hash[array[0].to_i]} thousand"
#   elsif number.to_s.length >= 5
#     puts "That's too big of a number for this program."
#   end

# end


# num_to_words(4, hash)
# num_to_words(30, hash)
# num_to_words(25, hash)
# num_to_words(47, hash)
# num_to_words(92, hash)
# num_to_words(100, hash)
# num_to_words(347, hash)
# num_to_words(2347, hash)
# num_to_words(3000, hash)
# num_to_words(3100, hash)
# num_to_words(43100, hash)




# Refactored Solution


def num_to_words(number, hash)
  array = number.to_s.split(//)
  if number <= 19 || (number%10 == 0 && number < 100)
    puts hash[number]
  elsif number.to_s.length == 2
    array.insert(1, '0')
    temp_array = array.shift(2)
    array.unshift(temp_array.join)
    puts "#{hash[array[0].to_i]}-#{hash[array[1].to_i]}"
  elsif number.to_s.length == 3
    array.insert(2, '0')
    temp_array = array[1,2].join.split
    temp_array.push(array.pop)
    temp_array.unshift(array.shift)
    puts "#{hash[temp_array[0].to_i]} hundred #{hash[temp_array[1].to_i]} #{hash[temp_array[2].to_i]}"
  elsif (number.to_s.length == 4 && number%1000 != 0)
    array.insert(3, '0')
    temp_array = array[2,2].join.split
    temp_array.push(array.pop)
    temp_array.unshift(array[1])
    temp_array.unshift(array[0])
    puts "#{hash[temp_array[0].to_i]} thousand #{hash[temp_array[1].to_i]} hundred #{hash[temp_array[2].to_i]} #{hash[temp_array[3].to_i]}"
  elsif (number.to_s.length == 4 && number%1000 == 0)
    puts "#{hash[array[0].to_i]} thousand"
  elsif number.to_s.length >= 5
    puts "YOUR NUMBER IS TOO BIG!!!!!"
  end

end


num_to_words(4, hash)
num_to_words(25, hash)
num_to_words(30, hash)
num_to_words(47, hash)
num_to_words(92, hash)
num_to_words(100, hash)
num_to_words(347, hash)
num_to_words(2347, hash)
num_to_words(3000, hash)
num_to_words(3100, hash)
num_to_words(43100, hash)






# Reflection