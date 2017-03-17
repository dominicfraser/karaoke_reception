class Desk

  attr_reader :rooms, :cash
  attr_accessor :host_name, :available_packages

  def initialize(rooms, cash)
    @rooms = rooms
    @cash = cash
    @host_name = ""
    @available_packages = {}
    #self.set_host_name  can't run tests with this here
  end

  def set_host_name
    puts "Please enter your name: "
    @host_name = gets.strip.capitalize
  end

end

