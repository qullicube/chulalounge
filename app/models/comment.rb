class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :course
	has_many :likes
	has_many :dislikes
end
