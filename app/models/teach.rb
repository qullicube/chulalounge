class Teach < ActiveRecord::Base
	belongs_to :professors
	belongs_to :courses
end
