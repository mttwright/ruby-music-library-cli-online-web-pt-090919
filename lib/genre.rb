class Genre
  
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
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
  
  def add_song(song)
    unless @songs.include?(song) || song.genre
      song.genre = self
      @songs.push(song)
    end
  end
  
  def songs
    @songs
  end
  
end