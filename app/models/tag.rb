class Tag < ApplicationRecord
	has_many :posts
	has_many :gossipps, through: :posts

end
