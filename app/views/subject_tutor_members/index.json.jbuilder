json.array!(@subject_tutor_members) do |subject_tutor_member|
  json.extract! subject_tutor_member, :subjecttutorID, :userID
  json.url subject_tutor_member_url(subject_tutor_member, format: :json)
end