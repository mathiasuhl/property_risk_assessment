class PropertyHasFacility < ActiveRecord::Base
  belongs_to :facility
  belongs_to :property

  validates_presence_of :property_id, :facility_id


  def score
    score_value  = 0

    score_value+1 unless has_revision_documents?
    score_value+1 unless has_service_contract?


    #score_value = score_value + self.services.last.score
    #score_value = score_value + self.inspections.last.score

    score_value
  end

end
