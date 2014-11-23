# -*- encoding : utf-8 -*-
class FacilityCategory < ActiveRecord::Base
  has_many :facilities
end
