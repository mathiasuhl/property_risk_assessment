json.array!(@surveys) do |survey|
  json.extract! survey, :id, :has_cracks, :has_maintanance_sticker, :has_damp_areas, :has_fire_extinguisher, :has_maintanance_and_inspection_manuel, :has_fire_wall, :has_free_evacuation_route, :has_closeable_fire_doors, :property_id
  json.url survey_url(survey, format: :json)
end
