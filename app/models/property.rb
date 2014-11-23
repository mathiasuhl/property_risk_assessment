class Property < ActiveRecord::Base
  belongs_to :tanant
  belongs_to :insurance
  has_many :facilities
  has_one :location
  has_one :survey

  enum  calc_of_rentable_area: ['keine', 'DIN', 'gif', 'sonstige']
  enum plans: ['Analog', 'Digital','CAD']
  enum lightning_protection_level: [' Blitzschutzklasse I',' Blitzschutzklasse II',' Blitzschutzklasse III',' Blitzschutzklasse IV']
  enum planning_permission: ['Sonderbau', 'Hochhaus', 'Verkaufsstätte']

	def	score
			
	end
	
	
end
