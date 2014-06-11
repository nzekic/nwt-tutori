
json.array!(@ads) do |ad|
 json.extract! ad, :id, :tutor_id, :subject_id, :title, :description, :hourly_rate, :expired, :created:at, :updated_at

end

