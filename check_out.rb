require_relative "setup"

class CheckOut
  def enter(host_name)
    puts "###### Room Status ######"

    self.display_room1
    puts "\n \n"

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

  def display_room1
    room1_guests = $setup1.room1.current_guests


    puts "Room 1 contains:" 
    room1_guests.each {|guest| print "#{guest.g_name} "} 
  end




end