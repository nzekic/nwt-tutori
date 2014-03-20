json.array!(@users) do |user|
  json.extract! user, :id, :privilege_id, :username, :password, :email, :name, :family_name, :account_activated, :activation_code
  json.url user_url(user, format: :json)
end
