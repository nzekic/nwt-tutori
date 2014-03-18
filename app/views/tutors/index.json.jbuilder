json.array!(@tutors) do |tutor|
  json.extract! tutor, :id, :user_id, :name, :familyName
  json.url tutor_url(tutor, format: :json)
end
