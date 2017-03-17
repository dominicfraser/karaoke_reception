require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../guest")
require_relative ("../song")
require_relative ("../party")
require_relative ("../room")
require_relative ("../desk")

class TestDesk < Minitest::Test

  def setup
    @song1 = Song.new("song1",2.5)
    @song2 = Song.new("song2",2)
    @guest1 = Guest.new("Jake",20,@song1)
    @guest2 = Guest.new("Sam",19,@song2)
    @party1 = Party.new()
    @room1 = Room.new("first_room", 3)
    @desk1 = Desk.new(@room1, 200)
  end

  def test_desk_has_cash
    assert_equal(200, @desk1.cash)
  end





end