json.array!(@facility_categories) do |facility_category|
  json.extract! facility_category, :id, :name
  json.url facility_category_url(facility_category, format: :json)
end
