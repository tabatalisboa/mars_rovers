require_relative 'rover'
require_relative 'rovers_controller'
require_relative 'router'
require_relative 'rover_repository'
require_relative 'rovers_view'

repository = RoverRepository.new
controller = RoversController.new(repository)
router = Router.new(controller)

router.run
