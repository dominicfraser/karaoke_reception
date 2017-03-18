require_relative ("nav")

class Engine 
  def initialize(screens, host_name)
    @screens = screens
    @host_name = host_name
  end

  def start()
    current_screen = @screens.opening_screen()
    last_screen = @screens.next_screen("exit")

    while current_screen != last_screen
      next_screen_name = current_screen.enter(@host_name)
      current_screen = @screens.next_screen(next_screen_name)
    end

  current_screen.enter(@host_name)
  end
end