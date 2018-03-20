class Author < ApplicationRecord
  has_many :authorships
  has_many :books, through: :authorships

  def self.search(search)
    Author.where("concat_ws(' ', first_name, last_name) ILIKE ?", "%#{search.squish}%")
  end

  # def self.search(search)
  #   return scoped unless search.present?
  #   where("last_name ILIKE ? OR first_name ILIKE ?","%#{search}%","%#{search}%")
  # end
    
 

  def full_name
    return "#{self.first_name} #{self.last_name}" 
  end

end

