#require "pry"

class Party 

  attr_reader :guests, :lowest_wallet, :dutch_pay_wallet
  attr_accessor :chosen_package

  def initialize(guests=[])
    @guests = [guests].flatten
    @lowest_wallet = 0
    self.update_lowest_wallet
    @dutch_pay_wallet = @lowest_wallet * @guests.length
    @chosen_package = {}
  end

  def add_guest(guest)
    @guests << guest
    self.update_lowest_wallet
    self.update_dutch_pay_wallet
  end

  def remove_guest(guest)
    @guests.delete(guest)
    self.update_lowest_wallet
    self.update_dutch_pay_wallet
    @guests = 0 ? @guests = [] : nil
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

  def update_dutch_pay_wallet()
    @dutch_pay_wallet = @lowest_wallet * @guests.length
  end

end






