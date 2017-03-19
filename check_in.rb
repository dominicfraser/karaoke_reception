class CheckIn

  def enter(host_name)
    puts "###### Check In ######"
    puts "Please choose: \nVIEW WAITING GUESTS or BACK"
    input = gets.strip.downcase

    if input.include? "main"
      return "main_screen"
    elsif input.include? "view"

      self.display_waiting_parties


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
end