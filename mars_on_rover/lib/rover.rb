class Rover
  attr_reader :x_coordinate, :y_coordinate

  def initialize(x_coordinate, y_coordinate, points_to)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @points_to = points_to
  end

  def move
    case @points_to
    when 0 then @y_coordinate += 1
    when 2 then @y_coordinate -= 1
    when 1 then @x_coordinate += 1
    when 3 then @x_coordinate -= 1
    end
  end

  # private

  def points_to
    @points_to
  end

  def turn_left
    if @points_to.zero?
      @points_to = 3
    else
      @points_to -= 1
    end
  end

  def turn_right
    if @points_to == 3
      @points_to = 0
    else
      @points_to += 1
    end
  end

  def translation
    case @points_to
      when 0 then "N"
      when 2 then "S"
      when 1 then "E"
      when 3 then "W"
    end
  end
end
