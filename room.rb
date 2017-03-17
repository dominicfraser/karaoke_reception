class Room

  attr_reader :room_name, :spaces, :current_guests_fav_songs
  attr_accessor :playlist, :current_guests

  def initialize(room_name,spaces)
    @room_name = room_name
    @spaces = spaces
    @playlist = []
    @current_guests = [] #methods below based on this being individual guests not party
    #@current_guests_fav_songs = []
    #self.update_fav_songs
  end

  def add_song(song)
    @playlist << song
    @playlist.flatten
    #self.update_fav_songs
    #self.current_guests_fav_songs.uniq! ###will need to update room when new guests also
  end

  # def update_fav_songs()
  #   @current_guests.each {|guest| @current_guests_fav_songs << guest.fav_song}
  # end

  def play_playlist()
    @playlist.each {|song| 
      puts "Everyone sings along to #{song.song_name}"
      @current_guests.each { |guest|
        puts guest.song_reaction(song) if guest.fav_song == song 
       }
     }
  end
end



