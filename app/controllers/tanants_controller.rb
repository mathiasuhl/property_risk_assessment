class TanantsController < ApplicationController
  before_action :set_tanant, only: [:show, :edit, :update, :destroy]

  # GET /tanants
  # GET /tanants.json
  def index
    @tanants = Tanant.all
  end

  # GET /tanants/1
  # GET /tanants/1.json
  def show
  end

  # GET /tanants/new
  def new
    @tanant = Tanant.new
  end

  # GET /tanants/1/edit
  def edit
  end

  # POST /tanants
  # POST /tanants.json
  def create
    @tanant = Tanant.new(tanant_params)

    respond_to do |format|
      if @tanant.save
        format.html { redirect_to @tanant, notice: 'Tanant was successfully created.' }
        format.json { render :show, status: :created, location: @tanant }
      else
        format.html { render :new }
        format.json { render json: @tanant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tanants/1
  # PATCH/PUT /tanants/1.json
  def update
    respond_to do |format|
      if @tanant.update(tanant_params)
        format.html { redirect_to @tanant, notice: 'Tanant was successfully updated.' }
        format.json { render :show, status: :ok, location: @tanant }
      else
        format.html { render :edit }
        format.json { render json: @tanant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tanants/1
  # DELETE /tanants/1.json
  def destroy
    @tanant.destroy
    respond_to do |format|
      format.html { redirect_to tanants_url, notice: 'Tanant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tanant
      @tanant = Tanant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tanant_params
      params.require(:tanant).permit(:company, :location, :address, :notes)
    end
end
