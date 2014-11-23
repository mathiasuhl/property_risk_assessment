# -*- encoding : utf-8 -*-
class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
    @facilities = @property.facilities
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
        @insurances = @property.insurance
      @surveys =  @property.survey 
    end


    
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:address, :city, :name, :zip, :year_of_construction, :owner, :company, :asset_management, :property_management, :service_provider, :has_garage, :calc_of_rentable_area, :plans, :lightning_protection_level, :has_land_register_record, :has_spezification, :planning_permission, :has_energy_pass, :has_fire_protection_plan, :tanant_id, :insurance_id, :has_soil_expertise, :has_electric_meter_per_rentable_areas, :has_plan_landregister, :has_soil_pollution, :has_keyregister, :has_construction_specification )
    end
end
