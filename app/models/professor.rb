class Professor < ActiveRecord::Base
	has_many :teaches
	has_many :courses ,through: :teaches
end
