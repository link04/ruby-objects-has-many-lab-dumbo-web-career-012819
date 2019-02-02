require 'pry'
class Artist 
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
        
    binding.pry
  end


  def add_song(song)
    @songs << song
    song.artist = self

  end
  
  def add_song_by_name(song)
    new_song = Song.new(song)
    @songs << new_song
    new_song.artist = self
  end
  
  def self.song_count
    Song.all.count
  end
end