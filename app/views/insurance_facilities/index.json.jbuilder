json.array!(@insurance_facilities) do |insurance_facility|
  json.extract! insurance_facility, :id, :intervall
  json.url insurance_facility_url(insurance_facility, format: :json)
end
