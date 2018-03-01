class Book < ApplicationRecord
  def self.search(search)
    where("title ILIKE ? OR author ILIKE ? OR genre ILIKE ? OR classification ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end

  




 