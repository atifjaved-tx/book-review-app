class Author < ApplicationRecord
	has_one_attached :image
  # validates :image, presence: true
  # validates :photos, presence: true
end
