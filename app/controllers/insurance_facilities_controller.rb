class InsuranceFacilitiesController < ApplicationController
  before_action :set_insurance_facility, only: [:show, :edit, :update, :destroy]

  # GET /insurance_facilities
  # GET /insurance_facilities.json
  def index
    @insurance_facilities = InsuranceFacility.all
  end

  # GET /insurance_facilities/1
  # GET /insurance_facilities/1.json
  def show
  end

  # GET /insurance_facilities/new
  def new
    @insurance_facility = InsuranceFacility.new
  end

  # GET /insurance_facilities/1/edit
  def edit
  end

  # POST /insurance_facilities
  # POST /insurance_facilities.json
  def create
    @insurance_facility = InsuranceFacility.new(insurance_facility_params)

    respond_to do |format|
      if @insurance_facility.save
        format.html { redirect_to @insurance_facility, notice: 'Insurance facility was successfully created.' }
        format.json { render :show, status: :created, location: @insurance_facility }
      else
        format.html { render :new }
        format.json { render json: @insurance_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insurance_facilities/1
  # PATCH/PUT /insurance_facilities/1.json
  def update
    respond_to do |format|
      if @insurance_facility.update(insurance_facility_params)
        format.html { redirect_to @insurance_facility, notice: 'Insurance facility was successfully updated.' }
        format.json { render :show, status: :ok, location: @insurance_facility }
      else
        format.html { render :edit }
        format.json { render json: @insurance_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insurance_facilities/1
  # DELETE /insurance_facilities/1.json
  def destroy
    @insurance_facility.destroy
    respond_to do |format|
      format.html { redirect_to insurance_facilities_url, notice: 'Insurance facility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insurance_facility
      @insurance_facility = InsuranceFacility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insurance_facility_params
      params.require(:insurance_facility).permit(:intervall)
    end
end
