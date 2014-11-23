# -*- encoding : utf-8 -*-
class Survey < ActiveRecord::Base
  belongs_to :property
  has_many :survey_facilities



  def score
    score_value = 0
    negative_score_map = [has_cracks_in_garage, has_cracks_in_interior_walls, has_cracks_in_exterior_walls, has_cracks_in_ceilings, has_damp_area_in_garage, has_damp_area_in_interior_walls, has_damp_area_in_exterior_walls, has_damp_area_in_ceilings, has_damp_area_roof_inside, has_damp_area_roof_windows, has_damp_area_windows, is_a_missusage_of_fire_doors_given]

    negative_score_map.each do |sv|
      score_value++ if self.send(sv)?
    end

    positiv_score_map = [has_neat_outdor_facility, has_neat_disposal_area, has_clean_garage, has_neat_roof, has_working_security_lights, has_working_escape_lights, has_working_normal_lights, has_fire_walls, is_the_legal_duty_to_maintain_safety_given, has_free_evacuation_route, has_closeable_fire_doors, are_panic_doors_working, is_cold_water_meter_calibrated, is_warm_water_meter_calibrated, is_heating_meter_calibrated, is_air_condition_meter_calibrated, is_electricity_meter_calibrated, has_fire_extinguisher]

    positiv_score_map.each do |sv|
      score_value++ unless self.send(sv)?
    end

    self.survey_facilities.each do |sf|
      score_value = score_value + sf.score
    end

  end

end
