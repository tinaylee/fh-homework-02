class Book < ApplicationRecord
  has_many :authorships
  has_many :authors, through: :authorships


  def self.search(search)
    where("title ILIKE ? OR author ILIKE ? OR genre ILIKE ? OR classification ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

  def get_author
 #  author = book.authors
    book.authors.ids.each do |id|
      puts Author.find(id).full_name
    end
  end



end

 