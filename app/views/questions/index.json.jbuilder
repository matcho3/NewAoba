json.array!(@questions) do |question|
  json.extract! question, :operation_id, :content
  json.url question_url(question, format: :json)
end