class Comment < ActiveRecord::Base
	belongs_true :user
	belongs_true :course
end
