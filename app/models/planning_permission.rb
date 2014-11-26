class PlanningPermission < ActiveRecord::Base
  has_many :inspection_specifications
end
