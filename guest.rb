class Guest

  attr_reader :g_name, :wallet, :fav_song

  def initialize(g_name, wallet, fav_song)
    @g_name = g_name
    @wallet = wallet
    @fav_song = fav_song
  end

end