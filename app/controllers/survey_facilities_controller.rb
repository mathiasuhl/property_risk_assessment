class SurveyFacilitiesController < ApplicationController
  before_action :set_survey_facility, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @survey_facilities = SurveyFacility.all
    respond_with(@survey_facilities)
  end

  def show
    respond_with(@survey_facility)
  end

  def new
    @survey_facility = SurveyFacility.new
    respond_with(@survey_facility)
  end

  def edit
  end

  def create
    @survey_facility = SurveyFacility.new(survey_facility_params)
    @survey_facility.save
    respond_with(@survey_facility)
  end

  def update
    @survey_facility.update(survey_facility_params)
    respond_with(@survey_facility)
  end

  def destroy
    @survey_facility.destroy
    respond_with(@survey_facility)
  end

  private
    def set_survey_facility
      @survey_facility = SurveyFacility.find(params[:id])
    end

    def survey_facility_params
      params.require(:survey_facility).permit(:survey_id, :facility_id, :has_grap_packs, :has_service_stickers, :elevator_emergencey_call_is_working, :elevator_intercom_is_working)
    end
end
