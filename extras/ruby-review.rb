# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode:
  # Split the string by individual words into a container.
  # For each element in the container, reverse the word and store it in a new container.
  # Join each element into a new string, separating each element by a space.


# Initial Solution

# def reverse_words(sentence)
#   array = sentence.split(" ")
#   array.map! {|word| word.reverse}
#   new_sentence = array.join(" ")
#   p new_sentence
# end


sentence = "Jim is so awesome at everything he does."
# reverse_words_in_a_sentence(sentence)


# Refactored Solution

require "benchmark"

def reverse_words(sentence)
  array = sentence.split(" ")
  array.map! {|word| word.reverse}
  new_sentence = array.join(" ")
  p new_sentence
end


puts Benchmark.measure{reverse_words(sentence)}


# Reflection

# I reflected all over this challenge.  I reflected so hard... all night long.  Over and over and over.