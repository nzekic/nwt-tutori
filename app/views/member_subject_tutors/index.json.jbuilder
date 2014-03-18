json.array!(@member_subject_tutors) do |member_subject_tutor|
  json.extract! member_subject_tutor, :subjecttutorID, :userID
  json.url member_subject_tutor_url(member_subject_tutor, format: :json)
end