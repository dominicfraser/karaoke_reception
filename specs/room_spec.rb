require ("minitest/autorun")
require ("minitest/rg")
#require ('minitest/emoji')
require_relative ("../guest")
require_relative ("../song")
require_relative ("../party")
require_relative ("../room")



class TestParty < Minitest::Test

  def setup
   
    @song1 = Song.new("song1",2.5)
    @song2 = Song.new("song2",2)
    @guest1 = Guest.new("Jake",20,@song1)
    @guest2 = Guest.new("Sam",19,@song2)
    @party1 = Party.new()
    @party2 = Party.new(@guest1)
    @room1 = Room.new("first_room", 3)
  end


  def test_room_has_spaces
    assert_equal(3, @room1.spaces)
  end

  def test_add_song_to_playlist
    @room1.add_song(@song1)
    assert_equal([@song1],@room1.playlist)
  end

  def test_update_fav_songs
    @room1.current_guests = [@guest1, @guest2]

    @room1.add_song(@song1)
    @room1.add_song(@song2)
    
    assert_equal([@song1, @song2], @room1.current_guests_fav_songs)
  end

  def test_update_fav_songs_when_initialize
  assert_equal([],@room1.current_guests_fav_songs) 
  end



end