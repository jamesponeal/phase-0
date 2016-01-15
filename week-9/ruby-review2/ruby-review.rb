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


# class PlayGame

#   def initialize
#     gather_info_to_begin_game
#   end

#   def gather_info_to_begin_game
#     puts "Welcome to Jim & Tiffany's Awesome Pizza Delivery Game"
#     puts "Do you want to deliver a pizza? (yes/no)"
#     answer = gets.chomp
#     if answer == "yes"
#       puts "Great, you're hired!!!  What kind of car do you want to drive?"
#       @car_model = gets.chomp
#       puts "OOoooohhhh... nice choice!!!  What color #{@car_model} do you want to drive?"
#       @car_color = gets.chomp
#       puts "Cool car!  Now it's time to load your car with pizzas!"
#       @pizza1 = Pizza.new
#       @car1 = Car.new(@car_model, @car_color, @pizza1.pizza_order)
#       play_game
#     elsif answer == "no"
#       puts "Fine, go play bingo or some other lame-ass game!!!..."
#       exit
#     else
#       puts "I didn't understand your answer, try again."
#       gather_info_to_begin_game
#     end
#   end

#   def play_game
#     puts "What do you want to do? (drive/turn/deliver pizza/check status/quit)"
#     answer = gets.chomp
#     if answer == "drive"
#       @car1.drive_car
#     elsif answer == "turn"
#       @car1.turn_car
#     elsif answer == "deliver pizza"
#       @car1.deliver_pizza
#     elsif answer == "check status"
#       @car1.car_status
#     elsif answer == "quit"
#       puts "You can't quit, YOU'RE FIRED!!!!"
#       exit
#     end
#     play_game
#   end

# end


# class Car

#   def initialize(model, color, pizza_order)
#     @directions = ["north", "east", "south", "west"]
#     @model = model
#     @color = color
#     @speed = 0
#     @total_distance = 0
#     @total_time_in_minutes = 0
#     @pizza_compartment = pizza_order
#   end

#   def drive_car
#     puts "Enter how far would you like to drive?"
#     distance = gets.chomp.to_i
#     puts "What is the speed limit?"
#     speed_limit = gets.chomp.to_i
#     puts "You drove your car #{distance} miles at #{speed_limit} miles per hour."
#     @total_distance += distance
#     @total_time_in_minutes += ((distance*60)/speed_limit)
#     @speed = speed_limit
#     car_status
#   end

#   def deliver_pizza
#     puts "You have arrived at a customer's house to deliver a pizza."
#     puts "You are delivering a #{@pizza_compartment[0]} pizza."
#     @pizza_compartment.shift
#   end

#   def car_status
#     puts "Your car has travelled: #{@total_distance} miles."
#     puts "Your total drive time is: #{@total_time_in_minutes} minutes."
#     puts "Your current speed is: #{@speed} miles per hour."
#     puts "Your current direction is #{@directions[0]}."
#     puts "Your pizza compartment contains: #{@pizza_compartment}"
#   end

#   def turn_car
#     puts "Which direction do you want to turn? (right/left)"
#     answer = gets.chomp
#     if answer == 'right'
#       @directions.rotate!
#     elsif answer == 'left'
#       @directions.rotate!(-1)
#     end
#     car_status
#   end

# end


# class Pizza

#   attr_accessor :pizza_order

#   def initialize
#     @pizza_order = []
#     create_order
#   end

#   def create_order
#     puts "How many pizzas do you want to deliver?"
#     qty = gets.chomp
#     qty.to_i.times do
#       puts "Choose a type of pizza to add:"
#       pizza_type = gets.chomp
#       @pizza_order.push(pizza_type)
#     end
#   end

# end


# @new_game = PlayGame.new




# 4. Refactored Solution


class PlayGame

  def initialize
    gather_info_to_begin_game
  end

  def gather_info_to_begin_game
    puts "Welcome to Jim & Tiffany's Awesome Pizza Delivery Game"
    puts "Do you want to deliver a pizza? (yes/no)"
    answer = gets.chomp
    if answer == "yes"
      puts "Great, you're hired!!!  What kind of car do you want to drive?"
      @car_model = gets.chomp
      puts "OOoooohhhh... nice choice!!!  What color #{@car_model} do you want to drive?"
      @car_color = gets.chomp
      puts "Cool car!  Now it's time to load your car with pizzas!"
      @pizza1 = Pizza.new
      @car1 = Car.new(@car_model, @car_color, @pizza1.pizza_order)
      play_game
    elsif answer == "no"
      puts "Fine, go play bingo or some other lame-ass game!!!..."
      exit
    else
      puts "I didn't understand your answer, try again."
      gather_info_to_begin_game
    end
  end

  def play_game
    puts "What do you want to do? (drive/turn/deliver pizza/check status/quit)"
    answer = gets.chomp
    if answer == "drive"
      @car1.drive_car
    elsif answer == "turn"
      @car1.turn_car
    elsif answer == "deliver pizza"
      @car1.deliver_pizza
    elsif answer == "check status"
      @car1.car_status
    elsif answer == "quit"
      puts "You can't quit, YOU'RE FIRED!!!!"
      exit
    end
    play_game
  end

end


class Car

  def initialize(model, color, pizza_order)
    @directions = ["north", "east", "south", "west"]
    @model = model
    @color = color
    @speed = 0
    @total_distance = 0
    @total_time_in_minutes = 0
    @pizza_compartment = pizza_order
  end

  def drive_car
    puts "Enter how far would you like to drive?"
    distance = gets.chomp.to_i
    puts "What is the speed limit?"
    speed_limit = gets.chomp.to_i
    puts "You drove your car #{distance} miles at #{speed_limit} miles per hour."
    @total_distance += distance
    @total_time_in_minutes += ((distance*60)/speed_limit)
    @speed = speed_limit
    car_status
  end

  def deliver_pizza
    puts "You have arrived at a customer's house to deliver a pizza."
    puts "You are delivering a #{@pizza_compartment[0]} pizza."
    @pizza_compartment.shift
  end

  def car_status
    puts "Your car has travelled: #{@total_distance} miles."
    puts "Your total drive time is: #{@total_time_in_minutes} minutes."
    puts "Your current speed is: #{@speed} miles per hour."
    puts "Your current direction is #{@directions[0]}."
    puts "Your pizza compartment contains: #{@pizza_compartment}"
  end

  def turn_car
    puts "Which direction do you want to turn? (right/left)"
    answer = gets.chomp
    if answer == 'right'
      @directions.rotate!
    elsif answer == 'left'
      @directions.rotate!(-1)
    end
    car_status
  end

end


class Pizza

  attr_accessor :pizza_order

  def initialize
    @pizza_order = []
    create_order
  end

  def create_order
    puts "How many pizzas do you want to deliver?"
    qty = gets.chomp
    qty.to_i.times do
      puts "Choose a type of pizza to add:"
      pizza_type = gets.chomp
      @pizza_order.push(pizza_type)
    end
  end

end


# 1. DRIVER TESTS GO BELOW THIS LINE

@new_game = PlayGame.new




# 5. Reflection

# What concepts did you review in this challenge?
  # For this challenge, we reviewed instance variables, passing variables between methods, and passing information between classes.

# What is still confusing to you about Ruby?
  # Multiple classes working together is still somewhat confusing, but this challenge definitely helped figure that out.

# What are you going to study to get more prepared for Phase 1?
  # Multiple classes, passing variables, and using attribute reader, writer, and accessor.