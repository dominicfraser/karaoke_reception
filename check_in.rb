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
      puts ""
      ###PARTY SELCTION
      puts "Which party would you like to check in?"
      party = gets.strip.downcase
      party = party.to_i - 1
      @party = $setup1.desk.waiting_parties[party]
      ###PACKAGE SELECTION
      puts "The following packages are available"
      self.display_packages 
      puts "Which package would the guest like: 15, 30, or 60?"
      self.choose_package

        puts @party.dutch_pay_wallet
        puts @package.cost
        puts $setup1.desk.can_party_afford?(@package, @party)
      self.can_chosen_party_afford_package?
      ##-->this doesnt exit to main when false?


      ###ROOM SELECTION AND PAYMENT
      if $setup1.desk.room_available?(@party) == false 
        puts "No room is available at the moment."
      else
        puts "Which room would you like to assign: 1, 2, or 3?"
        room_choice = gets.strip.downcase
        case room_choice
        when "1"
          $setup1.desk.assign_to_room(@party, $setup1.room1)
          puts "Party assigned to Room 1"
          $setup1.desk.take_payment(@party, @package)
        when "2"
          $setup1.desk.assign_to_room(@party, $setup1.room2)
          puts "Party assigned to Room 2"
          $setup1.desk.take_payment(@party, @package)
        when "3"
          $setup1.desk.assign_to_room(@party, $setup1.room3)
          puts "Party assigned to Room 3"
          $setup1.desk.take_payment(@party, @package)
        end
      end



      return "main_screen"
    else
      return "check_in"
    end
  end

  def can_chosen_party_afford_package?
    if $setup1.desk.can_party_afford?(@package, @party) == false
      puts "The group does not have enough money for that package"
      return "check_in"
    end
  end

  def choose_package
    package = gets.strip.downcase
    if package == "15" 
      @package = $setup1.package1
    elsif package == "30" 
      @package = $setup1.package2
    else
      @package = $setup1.package3
    end
  end

  def display_packages
    $setup1.desk.available_packages.each {|p_length, cost| 
      puts "#{p_length} minutes for £#{cost}."}
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