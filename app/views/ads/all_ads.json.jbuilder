json.array!(@ads) do |ad|
 json.extract! ad, :id, :tutor_id, :subject_id, :title, :description, :hourly_rate, :expired
 json.subject ad.subject, :id, :name
 json.tutor ad.user
end