json.array!(@courses) do |course|
  json.extract! course, :id, :title, :number, :description, :academic_year
  json.url course_url(course, format: :json)
end
