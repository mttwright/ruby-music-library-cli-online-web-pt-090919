require "pry"
class MusicImporter
  
  def initialize(path)
    @path = path
  end
  
  def path
    @path
  end
  
  def files
    dir = Dir.open(@path).children
  end
  
  def import
  
end