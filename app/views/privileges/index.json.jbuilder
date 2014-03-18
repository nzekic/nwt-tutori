json.array!(@privileges) do |privilege|
  json.extract! privilege, :id, :name, :description
  json.url privilege_url(privilege, format: :json)
end
