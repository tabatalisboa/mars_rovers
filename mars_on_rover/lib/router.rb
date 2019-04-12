class Router
  def initialize(rovers_controller)
    @rovers_controller = rovers_controller
    @running = true
  end

  def run
    puts "                  ---               "
    puts "             Hello, World!          "
    puts "               Welcome to           "
    puts "     Rovers on Mars Secret Mission  "
    puts "                  ---               "

    while @running
      @rovers_controller.create_1st_rover
      @rovers_controller.read_instructions("LMLMLMLMM")
      @rovers_controller.create_rover
      @rovers_controller.read_instructions
    end
  end

  # private

  # def route_action(action)
  #   case action
  # end

  # def stop
  #   @running = false
  # end
end
