require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../guest")
require_relative ("../song")


class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Jake",20,"song1")
    @song1 = Song.new("song1",2.5)
    @song2 = Song.new("song2",2)
  end

  def test_guest_has_name
    assert_equal("Jake", @guest1.g_name)
  end

  def test_fav_song_reaction
    assert_equal("Jake shouts: 'Yey! This is my favourite song", @guest1.song_reaction(@song1.song_name))
    assert_nil(nil, @guest1.song_reaction(@song2.song_name))
  end

end