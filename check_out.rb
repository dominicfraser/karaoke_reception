require_relative "setup"

class CheckOut
  def enter(host_name)
    puts "###### Room Status ######"

    self.display_rooms
    puts "\n \n"

    puts "CHECK OUT a party or go BACK?"
    input = gets.strip.downcase

    if input.include? "back"
      return "main_screen"
    elsif input.include? "out"

      puts "checked out"






      return "main_screen"
    else
      return "check_out"
    end


  end

  def display_rooms
    room1_guests = $setup1.room1.current_guests
    room2_guests = $setup1.room2.current_guests
    room3_guests = $setup1.room3.current_guests

    puts "Room 1 contains:" 
    room1_guests.each {|guest| print "#{guest.g_name} "} 
    puts
    puts "Room 2 contains:" 
    room2_guests.each {|guest| print "#{guest.g_name} "} 
    puts
    puts "Room 3 contains:" 
    room3_guests.each {|guest| print "#{guest.g_name} "} 
  end

end