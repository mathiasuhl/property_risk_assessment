# -*- encoding : utf-8 -*-
class InspectionSpecification < ActiveRecord::Base
  belongs_to :facility
  belongs_to :facility_category
  belongs_to :location
  belongs_to :planning_permission

end
