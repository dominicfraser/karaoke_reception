class Party 

  attr_reader :guests, :lowest_wallet

  def initialize()
    @guests = []
    @lowest_wallet = 0
  end

  def add_guest(guest)
    @guests << guest
  end

end