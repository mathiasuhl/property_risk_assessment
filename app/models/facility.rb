class Facility < ActiveRecord::Base
  belongs_to :property
  belongs_to :facility_category
  belongs_to :insurance_facility
end