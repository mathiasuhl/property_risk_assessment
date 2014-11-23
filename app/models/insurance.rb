# -*- encoding : utf-8 -*-
class Insurance < ActiveRecord::Base
  belongs_to :insurance_facility
  has_many :properties
end
