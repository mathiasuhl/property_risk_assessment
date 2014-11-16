json.array!(@services) do |service|
  json.extract! service, :id, :is_complete, :protocol, :proof
  json.url service_url(service, format: :json)
end
