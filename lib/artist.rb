require "pry"
class Artist

  attr_accessor :name, :songs

  @@all = []


  def initialize (name)
    @name = name 
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song 
    song.artist = self
  end

  def songs 
    @songs
  end 

  def add_song_by_name (song_name)
    song = Song.new(song_name)
    @songs << song 
    song.artist = self
  end 
  
  def self.song_count
   songs = @@all.map { |song| song.songs}.flatten.compact
    songs.length
   # binding.pry
  end 
end 