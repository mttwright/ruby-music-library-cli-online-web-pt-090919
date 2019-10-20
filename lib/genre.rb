class Genre
  
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
    self.save
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
  
  def songs
    @songs
  end
  
end