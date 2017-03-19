class CheckIn

  def enter(host_name)
    puts "###### Check In ######"
    puts "would you like to continue or go back to main screen"
    input = gets.strip.downcase

    if input.include? "main"
      return "main_screen"
    elsif input.include? "GAGA"
      return "log_on"
    else
      return "check_in"
    end
  end

end