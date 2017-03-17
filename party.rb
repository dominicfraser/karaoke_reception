#require "pry"

class Party 

  attr_reader :guests, :lowest_wallet

  def initialize(guests=[])
    @guests = [guests].flatten
    @lowest_wallet = 0
    self.update_lowest_wallet
  end

  def add_guest(guest)
    @guests << guest
    self.update_lowest_wallet
  end


  def update_lowest_wallet()
    total_wallet = []
    @guests.each { |guest| 
      total_wallet += [guest.wallet] }
    @lowest_wallet = total_wallet.min || 0
  end

  def remove_cash_from_each_guest(amount)
    @guests.map { |guest| guest.wallet -= amount }
  end

end






