require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../guest")
require_relative ("../song")
require_relative ("../party")
require_relative ("../room")
require_relative ("../desk")
require_relative ("../package")


class TestDesk < Minitest::Test

  def setup
    @song1 = Song.new("song1",2.5)
    @song2 = Song.new("song2",2)
    @guest1 = Guest.new("Jake",20,@song1)
    @guest2 = Guest.new("Sam",19,@song2)
    @party1 = Party.new([@guest1,@guest2])
    @party2 = Party.new()
    @room1 = Room.new("first_room", 3)
    @room2 = Room.new("first_room", 3)
    @desk1 = Desk.new([@room1, @room2], 200,[@party1])
    @package1 = Package.new(60, 50)
    @package2 = Package.new(120, 85) 
    @package3 = Package.new(15, 20) 
  end

  def test_desk_has_cash
    assert_equal(200, @desk1.cash)
  end

  def test_add_package
    @desk1.add_package(@package1)
    assert_equal({60 => 50}, @desk1.available_packages)
  end

  def test_is_room_available_when_full
    @room1.current_guests = [1,2,3]
    @room2.current_guests = [1,2,3]

    assert_equal(false, @desk1.room_available?(@party1))
  end

  def test_is_room_available_when_empty
    assert_equal(true, @desk1.room_available?(@party1))
  end

  def test_can_assign_package
    @desk1.add_package(@package1)
    @desk1.assign_package(60, @party1)
    assert_equal({60 => 50},@party1.chosen_package)
  end

  def test_party_cannot_afford
    assert_equal(false, @desk1.can_party_afford?(@package1, @party1))
  end

  def test_party_can_afford_true
      assert_equal(true, @desk1.can_party_afford?(@package3, @party1))
  end

  def test_take_payment
    @desk1.take_payment(@party1, @package3)
    assert_equal(10,@guest1.wallet)
    assert_equal(220,@desk1.cash)
  end

  def test_assign_party_to_room
    @desk1.assign_to_room(@party1, @room1)
    assert_equal([@guest1,@guest2],@room1.current_guests)
    assert_equal([],@desk1.today_parties)
  end

  def test_checkout_party_that_is_there
    @desk1.assign_to_room(@party1,@room1)
    @desk1.checkout_party(@party1,@room1)
    assert_equal([],@room1.current_guests)
  end

  def test_checkout_party_not_there
    @desk1.assign_to_room(@party1,@room1)
    @desk1.checkout_party(@party2,@room1)
    assert_equal([@guest1,@guest2],@room1.current_guests)
  end

  def test_find_current_room_party
    @desk1.assign_to_room(@party1,@room1)
    assert_equal(@party1, @desk1.current_party(@room1))
  end

  def test_checkout_current_party
    @desk1.assign_to_room(@party1,@room1)
    assert_equal([], @desk1.checkout_current_party(@room1))
  end

end