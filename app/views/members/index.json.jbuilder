json.array!(@members) do |member|
  json.extract! member, :id, :userID, :name, :familyName
  json.url member_url(member, format: :json)
end
