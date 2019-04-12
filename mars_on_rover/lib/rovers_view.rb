require_relative 'rovers_controller'
require_relative 'rover'

class RoversView
  def display_rover_coordinates(rover)
    puts "Rover to NASA. My current coordinates are..."
    puts "> #{rover.x_coordinate} #{rover.y_coordinate} #{rover.translation}"
  end

  def ask_instructions
    puts "Roger! Mars Mission to NASA. Waiting instructions..."
    print "> "
    gets.chomp
  end

  def wrong_instruction
    puts "Sorry miss. Wrong input."
  end

  def destroy
    puts "WOPS! Rover fell off the edge..."
  end

  def rover_example(instructions)
    puts "Roger! Receveing instructions..."
    dinamic_type("> #{instructions}")
  end

  private

  def dinamic_type(string)
    string_array = string.split("")
    string_array.each do |letter|
      print letter
      sleep(0.1)
    end
    puts ""
  end
end
