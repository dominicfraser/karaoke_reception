class Room

  attr_reader :room_name, :spaces
  attr_accessor :playlist, :current_guests

  def initialize(room_name,spaces)
    @room_name = room_name
    @spaces = spaces
    @playlist = []
    @current_guests = []
    @current_guests_fav_songs = []
  end

  def add_song(song)
    @playlist << song
    @playlist.flatten
  end

  def play_playlist()
    @playlist.each {|song| 
      if song == @current_guests
    }



  end
end




guest.
def song_reaction(song)
  if song == @fav_song  
    "#{@g_name} shouts: 'Yey! This is my favourite song" 
  end
end

play each 
for each check if is fav
  if is then song song_reaction
end 