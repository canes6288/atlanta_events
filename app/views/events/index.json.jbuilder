json.array!(@events) do |event|
  json.extract! event, :id, :name, :start_time, :end_time, :description, :url_name, :hidden, :user_id
  json.url event_url(event, format: :json)
end
