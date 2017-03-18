require_relative ("log_on")
require_relative ("main_screen")
require_relative ("check_in")
require_relative ("check_out")
require_relative ("exit")


class Nav
  @@screen_options = {
    "log_on" => LogOn.new(),
    "main_screen" => MainScreen.new(),
    "check_in" => CheckIn.new(),
    "check_out" => CheckOut.new(),
    "exit" => Exit.new()
  }

  def initialize(start_screen)
    @start_screen = start_screen
  end

  def next_screen(screen_name)
    direction_choice = @@screen_options[screen_name]
    return direction_choice
  end

  def opening_screen()
    return next_screen(@start_screen)
  end
end

