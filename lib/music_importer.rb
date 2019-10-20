class MusicImporter
  
  def initialize(path)
    @path = path
  end
  
  def path
    @path
  end
  
  def files
    @path.open
  end
  
end