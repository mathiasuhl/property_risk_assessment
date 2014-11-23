# -*- encoding : utf-8 -*-
class InspectionSpecificationsController < ApplicationController
  before_action :set_inspection_specification, only: [:show, :edit, :update, :destroy]

  # GET /inspection_specifications
  # GET /inspection_specifications.json
  def index
    @inspection_specifications = InspectionSpecification.all
  end

  # GET /inspection_specifications/1
  # GET /inspection_specifications/1.json
  def show
  end

  # GET /inspection_specifications/new
  def new
    @inspection_specification = InspectionSpecification.new
  end

  # GET /inspection_specifications/1/edit
  def edit
  end

  # POST /inspection_specifications
  # POST /inspection_specifications.json
  def create
    @inspection_specification = InspectionSpecification.new(inspection_specification_params)

    respond_to do |format|
      if @inspection_specification.save
        format.html { redirect_to @inspection_specification, notice: 'Inspection specification was successfully created.' }
        format.json { render :show, status: :created, location: @inspection_specification }
      else
        format.html { render :new }
        format.json { render json: @inspection_specification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inspection_specifications/1
  # PATCH/PUT /inspection_specifications/1.json
  def update
    respond_to do |format|
      if @inspection_specification.update(inspection_specification_params)
        format.html { redirect_to @inspection_specification, notice: 'Inspection specification was successfully updated.' }
        format.json { render :show, status: :ok, location: @inspection_specification }
      else
        format.html { render :edit }
        format.json { render json: @inspection_specification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inspection_specifications/1
  # DELETE /inspection_specifications/1.json
  def destroy
    @inspection_specification.destroy
    respond_to do |format|
      format.html { redirect_to inspection_specifications_url, notice: 'Inspection specification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspection_specification
      @inspection_specification = InspectionSpecification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inspection_specification_params
      params.require(:inspection_specification).permit(:name, :basis, :inspector, :intervall_in_years, :is_first_check_necessary, :inspector_first_check, :facility_id, :inspection_id, :location_id)
    end
end
