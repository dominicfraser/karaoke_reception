require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../guest")
require_relative ("../song")
require_relative ("../party")



class TestParty < Minitest::Test

  def setup
    @guest1 = Guest.new("Jake",20,"song1")
    @guest2 = Guest.new("Sam",20,"song2")
    @song1 = Song.new("song1",2.5)
    @song2 = Song.new("song2",2)
    @party1 = Party.new()
  end

  def test_add_guest_to_party
    assert_equal([@guest1], @party1.add_guest(@guest1))
  end


end