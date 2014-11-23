json.array!(@survey_facilities) do |survey_facility|
  json.extract! survey_facility, :id, :survey_id, :facility_id, :has_grap_packs, :has_service_stickers, :elevator_emergencey_call_is_working, :elevator_intercom_is_working
  json.url survey_facility_url(survey_facility, format: :json)
end
