class Professor < ActiveRecord::Base
	has_many :courses ,through: :teaches
end
