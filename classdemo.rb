class Album
  attr_reader :name, :songs
  def initialize name
    @name = name
    @songs = []
  end
  def add_song song
    @songs << song
  end
end

class Song
  attr_reader :name, :duration
  def initialize name, dur
    @name = name
    @duration = dur
  end
end

s1 = Song.new('Money', 4)
s2 = Song.new('Brain Damage', 3)

a1 = Album.new('Pink Floyd')
a1.add_song s1
a1.add_song s2

puts "Name #{a1.name}"
puts '=' * 40
a1.songs.each do |song|
  puts "Name #{song.name} Duration #{song.duration} min"
end