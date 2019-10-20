module Concerns::Findable
  
  def find_by_name(name)
    self.all.select do |item|
      item.name
    end
  end
  
end