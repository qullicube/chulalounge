json.array!(@teaches) do |teach|
  json.extract! teach, :course_id, :professor_id
  json.url teach_url(teach, format: :json)
end
