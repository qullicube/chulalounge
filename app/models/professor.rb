class Professor < ActiveRecord::Base
	has_many :teaches
	has_many :courses ,through: :teaches
	accepts_nested_attributes_for :teaches
end
