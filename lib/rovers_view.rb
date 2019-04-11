require_relative 'rovers_controller'
require_relative 'rover'

class RoversView
  def say_hello
    puts "Hello, world!"
  end

  def display_rover_coordinates(rover)
    puts "Rover coordinates..."
    puts "> #{rover.x_coordinate} #{rover.y_coordinate} #{rover.translation}"
  end

  def ask_instructions
    puts "Roger! Mars Mission to NASA. Waiting instructions..."
    print "> "
    return gets.chomp
  end

  def wrong_instruction
    puts "Sorry miss. Wrong input."
  end

  def destroy
    puts "WOPS! Rover fell off the edge..."
  end
end
