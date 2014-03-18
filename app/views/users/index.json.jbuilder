json.array!(@users) do |user|
  json.extract! user, :username, :password, :name, :familyName, :email, :privilege_id
  json.url user_url(user, format: :json)
end