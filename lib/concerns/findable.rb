module Concerns::Findable
  
  def find_by_name(name)
    @@all.detect do |item|
      item.name == name
    end
  end
  
end