require "pry"
class MusicImporter
  
  def initialize(path)
    @path = path
  end
  
  def path
    @path
  end
  
  def files
    dir = Dir.open(@path)
    binding.pry
  end
  
end