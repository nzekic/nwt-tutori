json.array!(@ads) do |ad|
  json.extract! ad, :id, :tutor_id, :subject_id, :title, :description, :hourly_rate, :expired
  json.url ad_url(ad, format: :json)
end
