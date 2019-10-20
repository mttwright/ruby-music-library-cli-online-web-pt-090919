require "pry"
class MusicImporter
  
  def initialize(path)
    @path = path
  end
  
  def path
    @path
  end
  
  def files
    file = File.open(@path)
    binding.pry
  end
  
end