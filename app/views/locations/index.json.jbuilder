json.array!(@locations) do |location|
  json.extract! location, :id, :name, :property_id
  json.url location_url(location, format: :json)
end
