require_relative 'rover'
require_relative 'rovers_view'

class RoversController
  def initialize(repository)
    @repository = repository
    @view = RoversView.new
    @plateau = [0, 1, 2, 3, 4, 5]
  end

  def create_1st_rover
    x_coordinate = 1
    y_coordinate = 2
    points_to = 0
    rover = Rover.new(x_coordinate, y_coordinate, points_to)
    @repository.add(rover)
    @view.display_rover_coordinates(rover)
  end

  def create_rover
    x_coordinate = rand(0..5)
    y_coordinate = rand(0..5)
    points_to = rand(0..3)
    rover = Rover.new(x_coordinate, y_coordinate, points_to)
    @repository.add(rover)
    @view.display_rover_coordinates(rover)
  end

  def final_position
    rover = @repository.all.last
    x = rover.x_coordinate
    y = rover.y_coordinate
    if @plateau.include?(x) && @plateau.include?(y)
      @view.display_rover_coordinates(rover)
    else
      @view.destroy
    end
  end

  def read_instructions(instructions = @view.ask_instructions)
    rover = @repository.all.last
    instructions_array = instructions.upcase.split("")
    instructions_array.each do |instruction|
      case instruction
      when "M" then rover.move
      when "R" then rover.turn_right
      when "L" then rover.turn_left
      else
        @view.wrong_instruction
        read_instructions
      end
    end
    final_position
  end
end
