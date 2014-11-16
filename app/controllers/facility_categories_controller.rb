class FacilityCategoriesController < ApplicationController
  before_action :set_facility_category, only: [:show, :edit, :update, :destroy]

  # GET /facility_categories
  # GET /facility_categories.json
  def index
    @facility_categories = FacilityCategory.all
  end

  # GET /facility_categories/1
  # GET /facility_categories/1.json
  def show
  end

  # GET /facility_categories/new
  def new
    @facility_category = FacilityCategory.new
  end

  # GET /facility_categories/1/edit
  def edit
  end

  # POST /facility_categories
  # POST /facility_categories.json
  def create
    @facility_category = FacilityCategory.new(facility_category_params)

    respond_to do |format|
      if @facility_category.save
        format.html { redirect_to @facility_category, notice: 'Facility category was successfully created.' }
        format.json { render :show, status: :created, location: @facility_category }
      else
        format.html { render :new }
        format.json { render json: @facility_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facility_categories/1
  # PATCH/PUT /facility_categories/1.json
  def update
    respond_to do |format|
      if @facility_category.update(facility_category_params)
        format.html { redirect_to @facility_category, notice: 'Facility category was successfully updated.' }
        format.json { render :show, status: :ok, location: @facility_category }
      else
        format.html { render :edit }
        format.json { render json: @facility_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facility_categories/1
  # DELETE /facility_categories/1.json
  def destroy
    @facility_category.destroy
    respond_to do |format|
      format.html { redirect_to facility_categories_url, notice: 'Facility category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facility_category
      @facility_category = FacilityCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def facility_category_params
      params.require(:facility_category).permit(:name)
    end
end
