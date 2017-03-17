require "pry"
class Desk

  attr_reader :rooms, :cash
  attr_accessor :host_name, :available_packages

  def initialize(rooms, cash, party)
    @rooms = rooms
    @cash = cash
    @host_name = ""
    @available_packages = {}
    @party = party
    #self.set_host_name  can't run tests with this here
  end

  def set_host_name
    puts "Please enter your name: "
    @host_name = gets.strip.capitalize
  end

  def add_package(package)
    @available_packages[package.p_length] = package.cost
  end

  def room_available?
    @rooms.each { |room| 
      if (room.spaces - room.current_guests.length) < @party.guests.length
        return false
      else
        return true
      end
    } 
  end ##blahh ugly

  def assign_package(time, party)
    party.chosen_package = @available_packages.select {|k,v| k = time}
  end 

  def can_party_afford?(package, party)
    package.cost < party.dutch_pay_wallet ? true : false
  end


end

