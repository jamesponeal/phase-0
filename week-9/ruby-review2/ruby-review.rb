# Create a Car Class from User Stories

# I worked on this challenge with: Tiffany Larson.


# 2. Pseudocode

  # Create a car class.
  # On initialization create the following variables:
  #   model, color, speed
  # Car class has the following methods:
  #  accelerate, brakes, follows the route, displays distance travelled, printed output of every action.

  # Create a delivery route class.
  # On initialization create the following variables:
  #   distance
  # Class has the following methods:
  #  Create delivery route with speed limits and stop signs.



# 3. Initial Solution


class Car

  def initialize(model, color)
    @model = model
    @color = color
    @speed = 0
  end



end


class DeliveryRoute

  def initialize
    distance_generator
  end

  def distance_generator
    @distance = (10...20).to_a.sample
    puts @distance
  end


end



def begin_game
  puts "Welcome to Jim & Tiffany's Awesome Pizza Delivery Game"
  puts "Do you want to deliver a pizza? (yes/no)"
  answer = gets.chomp
  if answer == "yes"
    puts "Great, you're hired!!!  What kind of car do you want to drive?"
    car_model = gets.chomp
    puts "OOoooohhhh... nice choice!!!  What color #{car_model} do you want to drive?"
    car_color = gets.chomp
    new_game = Car.new(car_model, car_color)
    new_route = DeliveryRoute.new
    play_game
  elsif answer == "no"
    puts "Fine, go play bingo or some other lame-ass game!!!..."
  else
    puts "I didn't understand your answer, try again."
    begin_game
  end
end


# begin_game

new_route = DeliveryRoute.new




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection