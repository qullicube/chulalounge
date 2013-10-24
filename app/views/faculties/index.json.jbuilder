json.array!(@faculties) do |faculty|
  json.extract! faculty, :id, :name, :abbreviation
end
