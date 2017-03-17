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
    @party2 = Party.new(@guest1)
  end

  def test_add_guest_to_party
    @party1.add_guest(@guest1)
    assert_equal([@guest1], @party1.guests)
  end

  def test_update_lowest_wallet
    @party1.add_guest(@guest1)
    @party1.add_guest(@guest2)
    @party1.update_lowest_wallet

    assert_equal(19, @party1.lowest_wallet)
  end

  def test_update_lowest_wallet_initialize_no_guests_then_add_guests
    @party1.add_guest(@guest1)
    @party1.add_guest(@guest2)
    assert_equal(19, @party1.lowest_wallet)
  end

  def test_update_lowest_wallet_initialize_with_guest
    assert_equal(20, @party2.lowest_wallet)
  end

  def test_update_lowest_wallet_initialize_no_guests
    assert_equal(0, @party1.lowest_wallet)
  end

  def test_remove_cash_from_guests
    @party1.add_guest(@guest1)
    @party1.add_guest(@guest2)
    @party1.remove_cash_from_each_guest(10)
    assert_equal(10, @guest1.wallet)
  end

  def test_dutch_pay_updates_when_guest_added
    @party1.add_guest(@guest1)
    @party1.add_guest(@guest2)
    assert_equal(38, @party1.dutch_pay_wallet)
  end


end