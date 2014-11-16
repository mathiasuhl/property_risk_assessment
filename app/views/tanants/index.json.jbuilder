json.array!(@tanants) do |tanant|
  json.extract! tanant, :id, :company, :location, :address, :notes
  json.url tanant_url(tanant, format: :json)
end
