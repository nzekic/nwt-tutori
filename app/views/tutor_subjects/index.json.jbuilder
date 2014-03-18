json.array!(@tutor_subjects) do |tutor_subject|
  json.extract! tutor_subject, :subjectID, :userID, :rateperhour
  json.url tutor_subject_url(tutor_subject, format: :json)
end