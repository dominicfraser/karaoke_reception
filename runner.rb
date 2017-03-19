require_relative "setup"



puts "please enter host ID"
host_name = gets.strip.downcase
puts "Welcome #{host_name.upcase}!"

nav1 = Nav.new("log_on")
engine1 = Engine.new(nav1, host_name)
engine1.start() 