json.array!(@users) do |user|
  json.extract! user, :username, :password, :name, :familyName, :email, :userroleID
  json.url user_url(user, format: :json)
end