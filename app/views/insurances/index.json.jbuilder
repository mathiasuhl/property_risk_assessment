json.array!(@insurances) do |insurance|
  json.extract! insurance, :id, :name, :notes, :insurance_facility_id
  json.url insurance_url(insurance, format: :json)
end
