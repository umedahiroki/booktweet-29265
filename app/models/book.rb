class Book < ApplicationRecord
    belongs_to :user
    has_many :comments

    def self.search(search)
        if search != ""
          Book.where("text LIKE ?", "%#{search}%")
        else
          Book.all.order("created_at DESC")
        end
    end
end
