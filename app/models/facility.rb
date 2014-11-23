# -*- encoding : utf-8 -*-
class Facility < ActiveRecord::Base
  belongs_to :property
  belongs_to :facility_category
  belongs_to :insurance_facility
  has_many :inspection_specifications
  has_many :inspections
  has_many :services


  def score
    score_value  = 0

    score_value++ unless has_revision_documents?
    score_value++ unless has_service_contract?


    score_value = score_value + self.services.last.score
    score_value = score_value + self.inspections.last.score

    score_value
  end

end
