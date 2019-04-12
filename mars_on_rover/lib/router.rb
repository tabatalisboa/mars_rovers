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
    @rovers_controller.rover_example(1, 2, 0, "LMLMLMLMM")
    @rovers_controller.rover_example(3, 3, 1, "RMMLMM")

    while @running
      @rovers_controller.create_rover
      @rovers_controller.read_instructions
      menu
    end
  end

  private

  def menu
    puts "what next?"
    puts "1. send out another rover"
    puts "2. exit mission"
    selection = gets.chomp.to_i
    stop if selection == 2
  end

  def stop
    @running = false
  end
end
