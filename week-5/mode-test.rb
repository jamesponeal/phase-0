

array1 = ["dog", "cat", "cat", "horse", "horse", "cat", "horse"]

def mode(array)
  hash1 = Hash[array.map {|x| [x, array.count(x)]}]
  mode_value = 0
  hash1.each_value do |y|
    if y > mode_value
      mode_value = y
    end
  end
  final_array = []
  hash1.each do |key, value|
    if value == mode_value
      final_array.push(key)
    end
  end
  p final_array
end



# def mode(array)
#  hash2 = {}
#  newer_array = []
#  array.each do |value|
#    if hash2.has_key?(value)
#      hash2[value] += 1
#    else
#      hash2[value] = 1
#    end
#  end
#  p hash2
# end

mode(array1)
