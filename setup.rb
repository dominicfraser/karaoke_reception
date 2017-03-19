require "pry"
require_relative ("guest")
require_relative ("song")
require_relative ("party")
require_relative ("room")
require_relative ("desk")
require_relative ("package")
require_relative ("nav")
require_relative ("engine")


class Setup

  attr_reader :room1, :room2, :room3, :desk, :party1, :party2

  def initialize()
    @room1 = Room.new("first_room", 3)
    @room2 = Room.new("second_room", 6)
    @room3 = Room.new("third_room", 10)
    @desk = Desk.new([@room1, @room2, @room3], 200, [])
    @package1 = Package.new(60, 50)
    @package2 = Package.new(30, 30) 
    @package3 = Package.new(15, 20) 
    @desk.add_package(@package1)
    @desk.add_package(@package2)
    @desk.add_package(@package3)
    @song1 = Song.new("song1",5)
    @song2 = Song.new("song2",10)
    @song3 = Song.new("song3",10)
    @song4 = Song.new("song4",5)
    @song5 = Song.new("song5",5)
    @song6 = Song.new("song6",5)
    @song7 = Song.new("song7",5)
    @song8 = Song.new("song8",5)
    @song9 = Song.new("song9",10)
    @song10 = Song.new("song10",5)
    @room1.add_song([@song1,@song2,@song3,@song4,@song5,@song6,@song7,@song8,@song9,@song10])
    @room2.add_song([@song1,@song2,@song3,@song4,@song5,@song6,@song7,@song8,@song9,@song10])
    @room3.add_song([@song1,@song2,@song3,@song4,@song5,@song6,@song7,@song8,@song9,@song10])

    @guest1 = Guest.new("Guest1",10,@song1)
    @guest2 = Guest.new("Guest2",5,@song1)
    @guest3 = Guest.new("Guest3",10,@song3)
    @guest4 = Guest.new("Guest4",14,@song4)
    @guest5 = Guest.new("Guest5",8,@song5)
    @guest6 = Guest.new("Guest6",20,@song6)
    @guest7 = Guest.new("Guest7",20,@song1)
    @guest8 = Guest.new("Guest8",10,@song1)
    @guest9 = Guest.new("Guest9",10,@song9)
    @guest10 = Guest.new("Guest10",10,@song9)

    @party1 = Party.new([@guest1,@guest2,@guest3])
    @party2 = Party.new([@guest4,@guest5,@guest6,@guest7,@guest8,@guest9,@guest10])
  end

end

$setup1 = Setup.new()
$setup1.desk.assign_to_room($setup1.party1, $setup1.room1)
# def assign_to_room(party, room)
#   party.guests.each {|guest| room.current_guests << guest}
# end