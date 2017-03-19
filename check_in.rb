class CheckIn

  def enter(host_name)
    puts "###### Check In ######"
    puts "Please choose: \nVIEW WAITING GUESTS or BACK"
    input = gets.strip.downcase

    if input.include? "main"
      return "main_screen"
    elsif input.include? "view"




      return "main_screen"
    else
      return "check_in"
    end
  end

end