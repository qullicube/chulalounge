class Curriculum < ActiveRecord::Base
	belongs_to :faculty
	has_many :courses
end
