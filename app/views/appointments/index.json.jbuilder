json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :tutoring_time_id, :member_id
  json.url appointment_url(appointment, format: :json)
end
