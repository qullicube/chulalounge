json.array!(@users) do |user|
  json.extract! user, :name, :password, :comment_id, :rating_id
  json.url user_url(user, format: :json)
end
