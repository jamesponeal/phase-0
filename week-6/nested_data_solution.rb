# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |x|
  if x.is_a?(Integer)
    x += 5
  elsif x.kind_of?(Array)
    x.map! {|y| y + 5}
  end
end

p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |x|
  if x.is_a?(String)
    x += "ly"
  elsif x.kind_of?(Array)
    x.map! do |y|
      if y.is_a?(String)
        y += "ly"
      elsif y.kind_of?(Array)
        y.map! {|z| z += "ly"}
      end
    end
  end
end

p startup_names


# REFLECTION:

# 1) What are some general rules you can apply to nested arrays?
  # When you want to reference an element in a nested array, you have to go a level deeper in your
  # callout.  So to get to 5 in this array: array = [1, 2, [3, 4, [5, 6]]], you would say
  # array[2][2][0].  Also, if you're going to iterate over a nested array, since you can't just do
  # the same thing to an array object as you can to an integer or a string, you may have to first
  # identify what the thing is in the array and write a conditional statement so that you do the
  # thing that is appropriate for the type of thing that you have.

# 2) What are some ways you can iterate over nested arrays?
  # You can use the same methods that work with any array, but if you have other arrays nested,
  # depending on what you're trying to accomplish when you iterate, you may have to first identify
  # what the thing is in the array and write a conditional statement so that you do the thing that
  # is appropriate for the type of thing that you have.

# 3) Did you find any good new methods to implement or did you re-use one you were already
# familiar with? What was it and why did you decide that was a good option?
  # We used .is_a? and .kind_of?, which I think are interchangable, to identify what we were dealing
  # with first, and wrote conditional statements that instructed what to do depending on what was
  # found.
