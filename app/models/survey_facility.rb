class SurveyFacility < ActiveRecord::Base
  belongs_to :survey
  belongs_to :facility

  def score
    score_value = 0
    score_value++ unless has_grap_packs?
    score_value++ unless has_service_stickers?
    score_value
  end

end
