class Review < ApplicationRecord
	belongs_to :author
	belongs_to :user
	validates_uniqueness_of :user_id, :scope => :author_id, :message=>"You can't review a product more than once", on: 'create'
end
