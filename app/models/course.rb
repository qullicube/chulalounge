class Course < ActiveRecord::Base
	has_and_belongs_to_many :curriculums
	has_many :comments
	has_many :ratings
	has_many :teaches
	has_many :professors , through: :teaches

	def self.autocomplete faculty,query
	  Course.all(
	  	:conditions => [
	  	"(LOWER(courses.title) LIKE ? OR courses.number LIKE ?) AND faculties.id LIKE ?", "#{query}%", "#{query}%", "#{faculty}"],
	  	:joins => [{:curriculums => :faculty}]
	  	)
    end

    def self.by_curriculum query
      all(
      	:conditions => [
      	"curriculums.id LIKE ? AND courses.year"
      	]
      	)
    end
end
