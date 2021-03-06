json.array!(@properties) do |property|
  json.extract! property, :id, :address, :city, :name, :zip, :year_of_construction, :owner, :company, :asset_management, :property_management, :service_provider, :has_garage, :calc_of_rentable_area, :plans, :lightning_protection_level, :has_land_register_record, :has_spezification, :planning_permission, :has_energy_pass, :has_fire_protection_plan, :tanant_id, :insurance_id
  json.url property_url(property, format: :json)
end
