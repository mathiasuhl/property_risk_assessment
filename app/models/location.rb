class Location < ActiveRecord::Base
  belongs_to :property
  has_many :inspection_specifications
end
