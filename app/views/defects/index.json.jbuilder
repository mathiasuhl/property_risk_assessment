json.array!(@defects) do |defect|
  json.extract! defect, :id, :level, :notes, :inspection_id, :status, :proof_of_status, :proof_of_order, :has_confirmed_order, :service_id
  json.url defect_url(defect, format: :json)
end
