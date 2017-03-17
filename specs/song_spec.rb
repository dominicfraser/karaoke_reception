require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../song")

class TestSong < Minitest::Test

  def setup
    @song1 = Song.new("song1",2.5)
    @song2 = Song.new("song2",2)
    @song3 = Song.new("song3",3.5)
    @song4 = Song.new("song4",3.5)
    @song5 = Song.new("song5",3)
  end

  def test_song_has_name
    assert_equal("song1", @song1.song_name)
  end

  def test_song_has_length
    assert_equal(2, @song2.song_length)
  end

end