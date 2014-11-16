class Property < ActiveRecord::Base
  belongs_to :tanant
  belongs_to :insurance
  has_many :facilities
  has_one :location
  has_one :survey
end
