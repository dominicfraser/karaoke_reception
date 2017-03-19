class CheckOut
  def enter(host_name)
    puts "room status"
    puts "would you like to check out guest or go back to main screen?"
    input = gets.strip.downcase

    if input.include? "main"
      return "main_screen"
    elsif
      input.include? "GAGA"
      return "log_on"
    end


  end

end