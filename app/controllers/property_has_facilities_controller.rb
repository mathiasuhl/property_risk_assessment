class PropertyHasFacilitiesController < ApplicationController
  before_action :set_property_has_facility, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @property_has_facilities = PropertyHasFacility.all
    respond_with(@property_has_facilities)
  end

  def show
    respond_with(@property_has_facility)
  end

  def new
    @property_has_facility = PropertyHasFacility.new
    respond_with(@property_has_facility)
  end

  def edit
  end

  def create
    @property_has_facility = PropertyHasFacility.new(property_has_facility_params)
    @property_has_facility.save
    respond_with(@property_has_facility)
  end

  def update
    @property_has_facility.update(property_has_facility_params)
    respond_with(@property_has_facility)
  end

  def destroy
    @property_has_facility.destroy
    respond_with(@property_has_facility)
  end

  private
    def set_property_has_facility
      @property_has_facility = PropertyHasFacility.find(params[:id])
    end

    def property_has_facility_params
      params.require(:property_has_facility).permit(:number, :has_revision_documents, :has_service_contract, :has_grap_packs, :has_service_stickers, :elevator_emergencey_call_is_working, :elevator_intercom_is_working)
    end
end
