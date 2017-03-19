class MainScreen

  def enter(host_name)
    puts "welcome to main"
    puts "would you like to checkin, checkout, room status, or log off?"
    input = gets.strip.downcase

    if input.include? "in"
      return "check_in"
    elsif input.include? "out"
      return "check_out"
    elsif input.include? "room"
      return "check_out"
    elsif input.include? "off"
      return "log_on"
    end

  end

end