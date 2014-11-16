class Property < ActiveRecord::Base
  belongs_to :tanant
  belongs_to :insurance
  has_many :facilities
end
