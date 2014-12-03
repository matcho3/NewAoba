json.array!(@operations) do |operation|
  json.extract! operation, :name
  json.url operation_url(operation, format: :json)
end