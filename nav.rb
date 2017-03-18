class Nav
  @@scene_options = {
    "log_on" => LogOn.new(),
    "main" => Main.new(),
    "check_in" => CheckIn.new(),
    "check_out" => CheckOut.new()
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