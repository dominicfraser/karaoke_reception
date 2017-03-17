require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../guest")
require_relative ("../song")
require_relative ("../party")



class TestParty < Minitest::Test

  def setup
    @guest1 = Guest.new("Jake",20,"song1")
    @guest2 = Guest.new("Sam",19,"song2")
    @song1 = Song.new("song1",2.5)
    @song2 = Song.new("song2",2)
    @party1 = Party.new()
  end

  def test_add_guest_to_party
    assert_equal([@guest1], @party1.add_guest(@guest1))
  end

  def test_update_lowest_wallet
    @party1.add_guest(@guest1)
    @party1.add_guest(@guest2)
    @party1.update_lowest_wallet

    assert_equal(19, @party1.lowest_wallet)
  end

  def test_update_lowest_wallet_initialize
    @party1.add_guest(@guest1)
    @party1.add_guest(@guest2)

    assert_equal(19, @party1.lowest_wallet)
  end

end