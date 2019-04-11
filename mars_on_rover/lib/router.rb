class Router
  def initialize(rovers_controller)
    @rovers_controller = rovers_controller
  end

  def run
    @rovers_controller.say_hello
    loop do
      @rovers_controller.create_rover
      @rovers_controller.read_instructions
    end
  end
end
