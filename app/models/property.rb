# -*- encoding : utf-8 -*-
class Property < ActiveRecord::Base
  belongs_to :tanant
  belongs_to :insurance
  has_many :facilities
  has_one :location
  has_one :survey

  enum  calc_of_rentable_area: ['keine', 'DIN', 'gif', 'sonstige']
  enum plans: ['keine','Analog', 'Digital','CAD']
  enum lightning_protection_level: [' Blitzschutzklasse I',' Blitzschutzklasse II',' Blitzschutzklasse III',' Blitzschutzklasse IV']
  enum planning_permission: ['Sonderbau', 'Hochhaus', 'Verkaufsstätte', 'Arbeitstätte', 'Liegt nicht vor']




	def	score
    score_value = 0
    score_map = [has_land_register_record, has_energy_pass, has_fire_protection_plan, has_soil_expertise, has_electric_meter_per_rentable_areas, has_plan_landregister, has_soil_pollution, has_keyregister, has_construction_specification]

    score_map.each do |sv|
      score_value++ unless self.send(sv)?
    end

    score_value++ unless calc_of_rentable_area == 'keine'
    score_value++ unless plans == 'keine'
    score_value++ unless planning_permission == 'Liegt nicht vor'


    score_value++ unless self.insurance

    self.facilities.each do |f|
      score_value = score_value + f.score
    end


    score_value = score_value+self.survey.score

    score_value
	end

end