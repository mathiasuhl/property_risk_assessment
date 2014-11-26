# -*- encoding : utf-8 -*-
class Property < ActiveRecord::Base
  belongs_to :tanant
  belongs_to :insurance
  has_many :property_has_facilities
  has_one :location
  has_one :survey
  belongs_to :planning_permission




  enum  calc_of_rentable_area: ['keine:', 'DIN:', 'gif:', 'sonstige']
  enum plans: ['keine','Analog', 'Digital','CAD']
  enum lightning_protection_level: [' Blitzschutzklasse I',' Blitzschutzklasse II',' Blitzschutzklasse III',' Blitzschutzklasse IV']

  def score
    score_value = 0
    score_map = [:has_land_register_record, :has_energy_pass, :has_fire_protection_plan, :has_soil_expertise, :has_electric_meter_per_rentable_areas, :has_plan_landregister, :has_soil_pollution, :has_keyregister, :has_construction_specification]

    score_map.each do |sv|
      score_value = score_value+1  unless self.send(sv)
    end
    #binding.pry
    score_value = score_value+1 if !calc_of_rentable_area == 'keine'
    score_value = score_value+1 if !plans == 'keine'
    score_value = score_value+1 if !planning_permission
    score_value = score_value+1 if !insurance


    self.property_has_facilities.each do |f|
      score_value = score_value + f.score
    end


    score_value = score_value+self.survey.score if self.survey

    score_value
  end

end