json.array!(@courses) do |course|
  json.extract! course, :title, :number, :description, :faculty, :academic_year
  json.url course_url(course, format: :json)
end
