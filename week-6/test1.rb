



true_board = []
until true_board.length == 5
  temp_arr = []
  temp_arr[0] = rand(15)+1 #numbers 1-15
  temp_arr[1] = rand(15)+16 #numbers 16-30
  temp_arr[2] = rand(15)+31 #numbers 31-45
  temp_arr[3] = rand(15)+46 #numbers 46-60
  temp_arr[4] = rand(15)+61 #numbers 61-75
  true_board.push(temp_arr)
end
p true_board

# until true_board.length == 5
#   temp_arr = []
#   temp_arr[0] = rand(15)+1 #numbers 1-15
#   temp_arr[1] = rand(15)+16 #numbers 16-30
#   temp_arr[2] = rand(15)+31 #numbers 31-45
#   temp_arr[3] = rand(15)+46 #numbers 46-60
#   temp_arr[4] = rand(15)+61 #numbers 61-75
#   p temp_arr
#   true_board.each do |sub_arr|
#     if sub_arr[0] != temp_arr[0] && sub_arr[1] != temp_arr[1] && sub_arr[2] != temp_arr[2] && sub_arr[3] != temp_arr[3] && sub_arr[4] != temp_arr[4]
#       true_board.push(temp_arr)
#     end
#   end
# end

# p true_board
