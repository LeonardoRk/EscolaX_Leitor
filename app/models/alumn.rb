class Alumn < ApplicationRecord

  def self.search(search)
    where("bar_code LIKE ?", "%#{search}%") 
  end

end
