


class LogOn 

  def enter(host_name)
    puts "###### LOG ON ######"
    puts "Please choose: \nLOG ON or EXIT?"
    input = gets.strip().downcase
    if input.include? "on" 
      return "main_screen"
    elsif input.include? "exit"
      return "exit"
    else
      return "log_on"
    end
    return "check_in"
  end

end