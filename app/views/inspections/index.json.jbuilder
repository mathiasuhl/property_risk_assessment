json.array!(@inspections) do |inspection|
  json.extract! inspection, :id, :date, :inspector, :eq_number, :protocol_number, :facility_id, :protocol_file, :inspector_company
  json.url inspection_url(inspection, format: :json)
end
