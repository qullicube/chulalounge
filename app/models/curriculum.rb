class Curriculum < ActiveRecord::Base
	belongs_to :faculty
	has_and_belongs_to_many :courses

	validates_associated :faculty
	validates :name, length: {minimum: 1} ,allow_blank: false
	validates :Abbreviation,  length: {minimum: 1} ,allow_blank: false
end
