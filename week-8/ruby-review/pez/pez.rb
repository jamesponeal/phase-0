# PezDispenser Class from User Stories

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
  # - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
  #      represent Pez so it's easy to start with a full Pez dispenser.
  # - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
  #      so I can know how many are left.
  # - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
  # - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
  # - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
  #      of the flavors coming up.


# PSEUDOCODE:
  # Create a full pez dispenser with 12 randomly selected flavors.
    # Create a new array.
    # Randomly select flavors and push them into the new array until it contains 12 items.
  # Count remaining pez candies.
    # Return the number of elements remaining in the array.
  # Remove a pez.
  # Add a pez.
  # See what pez are coming up.




# INITIAL SOLUTION:

class PezDispenser

  def initialize(flavors)
    @flavors = flavors
    @my_pez = []
    load_dispenser
  end

  def load_dispenser
    12.times {@my_pez.push(@flavors[rand(@flavors.length)])}
  end

  def pez_count
    @my_pez.length
  end

  def get_pez
    @my_pez.shift
  end

  def add_pez(flavor)
    @my_pez.push(flavor)
  end

  def see_all_pez
    @my_pez
  end

end



# REFACTORED SOLUTION:






# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
# super_mario = PezDispenser.new(flavors)
# puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
# puts "Here's a look inside the dispenser:"
# puts super_mario.see_all_pez
# puts "Adding a banana pez."
# super_mario.add_pez("banana")
# puts "Now you have #{super_mario.pez_count} pez!"
# puts "Oh, you want one do you?"
# puts "The pez flavor you got is: #{super_mario.get_pez}"
# puts "Now you have #{super_mario.pez_count} pez!"




# Reflection