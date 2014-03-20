json.array!(@tutoring_times) do |tutoring_time|
  json.extract! tutoring_time, :id, :ad_id, :time, :reserved
  json.url tutoring_time_url(tutoring_time, format: :json)
end
