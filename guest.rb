class Guest

  attr_reader :g_name, :fav_song
  attr_accessor :wallet

  def initialize(g_name, wallet, fav_song)
    @g_name = g_name
    @wallet = wallet
    @fav_song = fav_song
  end

  def song_reaction(song)
    if song == @fav_song  
      "#{@g_name} shouts: 'Yey! #{song.song_name} is my favourite song" 
    end
  end


end