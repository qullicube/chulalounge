class Teach < ActiveRecord::Base
	belongs_to :professor   # foreign key - professor_id
	belongs_to :course     # foreign key - course_id
end
