class Course < ActiveRecord::Base
	has_many :comments
	has_many :ratings
	has_many :teaches
	has_many :professors , through: :teaches
end
