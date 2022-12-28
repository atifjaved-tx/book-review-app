class Author < ApplicationRecord
	has_one_attached :image
    has_many :reviews
    belongs_to :user,:optional=>true
    belongs_to :category,:optional=>true
  
end
