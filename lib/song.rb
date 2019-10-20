require "pry"
class Song
  
  @@all = []
  attr_accessor :name
  
  
  def initialize(name, artist=nil, genre=nil)
    @name = name
    self.artist=(artist) if artist
    self.genre=(genre) if genre
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all = []
  end
  
  def save
    @@all.push(self)
  end
  
  def self.create(name)
    x = self.new(name)
    x.save
    x
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def artist
    @artist
  end
  
  def genre=(genre)
    @genre = genre
    genre.save
  end
  
  def genre
    @genre
  end
    
  
end