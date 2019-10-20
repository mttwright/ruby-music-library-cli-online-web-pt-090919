require "pry"
class Song
  
  @@all = []
  attr_accessor :name
  
  
  def initialize(name, artist=nil, genre=nil)
    @name = name
    self.artist=(artist) if artist
    self.genre=(genre) if genre
    self.save
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all = []
  end
  
  def save
    @@all.push(self) unless @@all.include?(self)
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
    genre.songs.push(self) unless genre.songs.include?(self)
  end
  
  def genre
    @genre
  end
  
  def self.find_by_name(name)
    self.all.detect do |song|
      song.name == name
    end
  end
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      self.create(name)
    end
  end
  
  def self.new_from_filename(filename)
  end
    
  
end