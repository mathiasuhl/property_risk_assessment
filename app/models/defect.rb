class Defect < ActiveRecord::Base
  belongs_to :inspection
  belongs_to :service
end
