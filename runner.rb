require_relative "setup"



$setup1.desk.set_host_name

nav1 = Nav.new("log_on")
engine1 = Engine.new(nav1, $setup1.desk.host_name)
engine1.start() 