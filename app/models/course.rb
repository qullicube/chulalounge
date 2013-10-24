class Course < ActiveRecord::Base
	has_and_belongs_to_many :curriculums
	has_many :comments
	has_many :ratings
	has_many :teaches
	has_many :professors , through: :teaches
end
