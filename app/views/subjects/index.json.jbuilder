json.array!(@subjects) do |subject|
  json.extract! subject, :name, :faculty, :description
  json.url subject_url(subject, format: :json)
end