class CheckIn

  def enter(host_name)
    puts "###### Check In ######"
    puts "Please choose: \nVIEW WAITING GUESTS or BACK"
    input = gets.strip.downcase

    if input.include? "main"
      return "main_screen"
    elsif input.include? "view"
      self.display_waiting_parties
      self.display_room_spaces
      # puts 
      # puts "Would you like to check in the first party in the queue?"
      # puts "Please choose: \nYES or NO"
      # input2 = gets.strip.downcase

      # if input2.include? "y"
      #   #try to check in first in queue 
      #   #move to second pos
      #   #no spaces at the moment
      #   #please tell guest 
      # end


      return "main_screen"
    else
      return "check_in"
    end
  end




  def display_waiting_parties
    waiting = $setup1.desk.waiting_parties
    counter = 1
    if waiting.length == 0
      puts "No parties waiting to check in."
    else
    waiting.each {|party| 
      puts "Party #{counter}: #{party.guests.length} guests."
      counter += 1}
    end
    counter = 0
  end
  def display_room_spaces
    room1_spaces = $setup1.room1.spaces 
    room1_guests = $setup1.room1.current_guests.length
    room1_spaces_left = room1_spaces - room1_guests
    
    room2_spaces = $setup1.room2.spaces 
    room2_guests = $setup1.room2.current_guests.length
    room2_spaces_left = room2_spaces - room2_guests

    room3_spaces = $setup1.room3.spaces 
    room3_guests = $setup1.room3.current_guests.length
    room3_spaces_left = room3_spaces - room3_guests

    

    puts "Room 1 has #{room1_spaces_left} spaces." 
    puts "Room 2 has #{room2_spaces_left} spaces."
    puts "Room 3 has #{room3_spaces_left} spaces." 
  end
end