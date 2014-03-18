json.array!(@tutor_subjects) do |tutor_subject|
  json.extract! tutor_subject, :subject_id, :tutor_id, :rateperhour
  json.url tutor_subject_url(tutor_subject, format: :json)
end