class Authorship < ApplicationRecord
  belongs_to :book # book_id
  belongs_to :author # author_id
end


# Author <----> Authorship <----> Book

# author.books # 1 to many 
# book.authors # 1 to many 

# author.authorships # 1 to many 
# book.authorships # 1 to many

