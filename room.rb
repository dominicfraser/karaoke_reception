class Room

  attr_reader :room_name, :spaces
  attr_accessor :playlist, :current_guests

  def initialize(room_name,spaces)
    @room_name = room_name
    @spaces = spaces
    @playlist = []
    @current_guests = []
  end

  def add_song(song)
    @playlist << song
    @playlist.flatten
  end







end