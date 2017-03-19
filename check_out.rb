require_relative "setup"

class CheckOut
  def enter(host_name)
    puts "###### Room Status ######"

    puts room1.current_guests

    puts "would you like to check out guest or go BACK to main screen?"
    input = gets.strip.downcase

    if input.include? "back"
      return "main_screen"
    elsif input.include? "GAGA"
      return "log_on"
    else
      return "check_out"
    end


  end

end