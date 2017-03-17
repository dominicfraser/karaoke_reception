class Room

  attr_reader :room_name, :spaces, :current_guests_fav_songs
  attr_accessor :playlist, :current_guests

  def initialize(room_name,spaces)
    @room_name = room_name
    @spaces = spaces
    @playlist = []
    @current_guests = []
    @current_guests_fav_songs = []
    #self.update_fav_songs
  end

  def add_song(song)
    @playlist << song
    @playlist.flatten
    self.update_fav_songs.uniq! ###will need to update room when new guests also
  end

  def update_fav_songs
    @current_guests.each {|guest| @current_guests_fav_songs << guest.fav_song}
  end

  def play_playlist()
  end

  def compare_playlist_to_favs
  end

end

# if playlist + current_guests_fav_songs have same
# then guest.song reaction(song) for each



# guest.
# def song_reaction(song)
#   if song == @fav_song  
#       "#{@g_name} shouts: 'Yey! #{song} is my favourite song" 
#   end
# end

# play each 
# for each check if is fav
#   if is then song song_reaction
# end 