json.array!(@inspection_specifications) do |inspection_specification|
  json.extract! inspection_specification, :id, :name, :basis, :inspector, :intervall_in_years, :is_first_check_necessary, :inspector_first_check, :facility_id, :inspection_id, :location_id
  json.url inspection_specification_url(inspection_specification, format: :json)
end
