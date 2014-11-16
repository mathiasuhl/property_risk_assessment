class Facility < ActiveRecord::Base
  belongs_to :property
  belongs_to :facility_category
  belongs_to :insurance_facility
  has_many :inspection_specifications
  has_many :inspections
end
