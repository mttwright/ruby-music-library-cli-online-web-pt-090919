class MusicImporter
  
  def initialize(path)
    @path = path
  end
  
  def path
    @path
  end
  
  def files
    @path.file.open
  end
  
end