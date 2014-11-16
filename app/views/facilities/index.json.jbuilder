json.array!(@facilities) do |facility|
  json.extract! facility, :id, :name, :specification, :notes, :property_id, :base_of_check, :facility_category_id, :insurance_facility_id, :amount, :number
  json.url facility_url(facility, format: :json)
end
