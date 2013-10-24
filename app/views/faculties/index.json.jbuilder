json.array!(@faculties) do |faculty|
  json.extract! faculty, :name, :abbreviation
  json.url faculty_url(faculty, format: :json)
end
