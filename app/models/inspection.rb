class Inspection < ActiveRecord::Base
  belongs_to :facility
  has_many :defects
end
