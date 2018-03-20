class Book < ApplicationRecord
  has_many :authorships
  has_many :authors, through: :authorships


  def self.search(search)
    where("title ILIKE ? OR genre ILIKE ? OR classification ILIKE ? OR subtitle ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

 
  def info
    # author_names = authors.map do | author |
    #   author.full_name
    # end
    "#{title} : #{subtitle} by #{author_names}"
  end

  def author_names
    authors.map(&:full_name).join(', ')
  end
end

 