require "pry"
class Desk

  attr_reader :rooms, :cash, :today_parties, :waiting_parties
  attr_accessor :host_name, :available_packages

  def initialize(rooms, cash, waiting_parties=[])
    @rooms = rooms #array
    @cash = cash
    @host_name = ""
    @available_packages = {}
    @waiting_parties = waiting_parties
    @today_parties = []
    #array
    #self.set_host_name  can't run tests with this here
  end

  def set_host_name
    puts "Please enter HOST ID:"
    host_name = gets.strip.downcase
    puts "Welcome #{host_name.upcase}!"
    @host_name = host_name
  end

  def add_package(package)
    @available_packages[package.p_length] = package.cost
  end

  def room_available?(new_party)
    available_rooms = []
    @rooms.each { |room| 
      if (room.spaces - room.current_guests.length) < new_party.guests.length
      else
        available_rooms << true
      end
    } 
    if available_rooms.include? true
      return true
    else
      return false
    end
  end ##blahh ugly

  def assign_package(time, party)
    party.chosen_package = @available_packages.select {|k,v| k = time}
  end 

  def can_party_afford?(package, party)
    binding.pry
    (package.cost / party.guests.length) < party.dutch_pay_wallet ? true : false
  end

  def take_payment(party, package)
    @cash += package.cost
    cost_per_guest = package.cost / party.guests.length
    party.remove_cash_from_each_guest(cost_per_guest)
  end

  def assign_to_room(party, room)
    party.guests.each {|guest| room.current_guests << guest}
    self.today_parties << party
    self.waiting_parties.delete(party)

  end

  def checkout_party(party, room)
    # return if room.current_guests != party.guests    
    #see test spec for problem
    room.current_guests.clear
  end

  def current_party(room)
    self.today_parties.each {|party|
      if party.guests.include? room.current_guests[0]
        return party
      end
    }
  end

  def checkout_current_party(room)
    current = self.current_party(room)
    self.checkout_party(current, room)
    return room.current_guests
  end

end

