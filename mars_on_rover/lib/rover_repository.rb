class RoverRepository
  def initialize
    @rover = []
  end

  def add(rover)
    @rover << rover
  end

  def all
    @rover
  end
end
