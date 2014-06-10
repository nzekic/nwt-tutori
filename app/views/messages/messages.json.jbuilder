json.array!(@messages) do |message|
 json.extract! message, :id, :sender_id, :receiver_id, :content, :created_at, :updated_at
end

