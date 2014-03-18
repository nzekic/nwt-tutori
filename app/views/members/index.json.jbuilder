json.array!(@members) do |member|
  json.extract! member, :id, :user_id, :name, :familyName
  json.url member_url(member, format: :json)
end
