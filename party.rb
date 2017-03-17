#require "pry"

class Party 

  attr_reader :guests, :lowest_wallet

  def initialize()
    @guests = []
    @lowest_wallet = 0
    #@lowest_wallet.update_lowest_wallet
  end

  def add_guest(guest)
    @guests << guest
  end


  def update_lowest_wallet()
    total_wallet = []
    @guests.each { |guest| 
      total_wallet += [guest.wallet] }
    @lowest_wallet = total_wallet.min
  end



end






