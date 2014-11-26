json.array!(@property_has_facilities) do |property_has_facility|
  json.extract! property_has_facility, :id, :number, :has_revision_documents, :has_service_contract, :has_grap_packs, :has_service_stickers, :elevator_emergencey_call_is_working, :elevator_intercom_is_working
  json.url property_has_facility_url(property_has_facility, format: :json)
end
