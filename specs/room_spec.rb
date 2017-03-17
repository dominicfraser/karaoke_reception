require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../guest")
require_relative ("../song")
require_relative ("../party")
require_relative ("../room")



class TestParty < Minitest::Test

  def setup
    @guest1 = Guest.new("Jake",20,"song1")
    @guest2 = Guest.new("Sam",19,"song2")
    @song1 = Song.new("song1",2.5)
    @song2 = Song.new("song2",2)
    @party1 = Party.new()
    @party2 = Party.new(@guest1)

  end








end