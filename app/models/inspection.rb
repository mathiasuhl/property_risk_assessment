class Inspection < ActiveRecord::Base
  belongs_to :facility
  has_many :defects
  has_many :inspection_specifications
end
