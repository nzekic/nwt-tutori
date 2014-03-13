json.array!(@subject_tutors) do |subject_tutor|
  json.extract! subject_tutor, :subjectID, :userID, :rateperhour
  json.url subject_tutor_url(subject_tutor, format: :json)
end