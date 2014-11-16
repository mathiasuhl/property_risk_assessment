class InsuranceFacility < ActiveRecord::Base
  has_one :insurance
  has_one :facility
end
