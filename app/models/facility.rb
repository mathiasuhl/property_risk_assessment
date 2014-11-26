# -*- encoding : utf-8 -*-
class Facility < ActiveRecord::Base
  belongs_to :facility_category
  belongs_to :insurance_facility
  has_many :inspection_specifications
  has_many :inspections
  has_many :services


  def full_name
    name+', '+specification.truncate(20)+', '+description.truncate(20)
  end



end
