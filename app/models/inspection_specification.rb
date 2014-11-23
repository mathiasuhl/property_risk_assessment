# -*- encoding : utf-8 -*-
class InspectionSpecification < ActiveRecord::Base
  belongs_to :facility
  belongs_to :inspection
  belongs_to :location
end
