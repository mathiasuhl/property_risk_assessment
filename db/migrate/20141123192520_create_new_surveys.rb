class CreateNewSurveys < ActiveRecord::Migration
  def change

    create_table :surveys do |t|
      t.boolean :has_cracks_in_garage
      t.boolean :has_cracks_in_interior_walls
      t.boolean :has_cracks_in_exterior_walls
      t.boolean :has_cracks_in_ceilings
      t.boolean :has_damp_area_in_garage
      t.boolean :has_damp_area_in_interior_walls
      t.boolean :has_damp_area_in_exterior_walls
      t.boolean :has_damp_area_in_ceilings
      t.boolean :has_damp_area_roof_inside
      t.boolean :has_damp_area_roof_windows
      t.boolean :has_damp_area_windows
      t.boolean :has_neat_outdor_facility
      t.boolean :has_neat_disposal_area
      t.boolean :has_clean_garage
      t.boolean :has_neat_roof
      t.boolean :has_working_security_lights
      t.boolean :has_working_escape_lights
      t.boolean :has_working_normal_lights
      t.boolean :has_fire_walls
      t.boolean :is_the_legal_duty_to_maintain_safety_given
      t.boolean :has_free_evacuation_route
      t.boolean :is_a_missusage_of_fire_doors_given
      t.boolean :has_closeable_fire_doors
      t.boolean :are_panic_doors_working
      t.boolean :is_cold_water_meter_calibrated
      t.boolean :is_warm_water_meter_calibrated
      t.boolean :is_heating_meter_calibrated
      t.boolean :is_air_condition_meter_calibrated
      t.boolean :is_electricity_meter_calibrated
      t.boolean :has_fire_extinguisher

      t.references :property, index: true

      t.timestamps
    end

  end
end
