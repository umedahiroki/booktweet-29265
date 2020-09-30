class Book < ApplicationRecord
    belongs_to :user
    has_many :comments

    def self.search(search)
        if search != ""
          Book.where('text LIKE(?) OR topic LIKE(?)',"%#{search}%","%#{search}%")
        else
          Book.all
        end
    end
end
