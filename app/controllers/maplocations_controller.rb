class MaplocationsController < ApplicationController
  before_action :set_maplocation, only: [:show, :edit, :update, :destroy]

  # GET /maplocations
  # GET /maplocations.json
  def index
    @maplocations = Maplocation.all
  end

  # GET /maplocations/1
  # GET /maplocations/1.json
  def show
  end

  # GET /maplocations/new
  def new
    @maplocation = Maplocation.new
  end

  # GET /maplocations/1/edit
  def edit
  end

  # POST /maplocations
  # POST /maplocations.json
  def create
    @maplocation = Maplocation.new(maplocation_params)

    respond_to do |format|
      if @maplocation.save
        format.html { redirect_to @maplocation, notice: 'Maplocation was successfully created.' }
        format.json { render :show, status: :created, location: @maplocation }
      else
        format.html { render :new }
        format.json { render json: @maplocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maplocations/1
  # PATCH/PUT /maplocations/1.json
  def update
    respond_to do |format|
      if @maplocation.update(maplocation_params)
        format.html { redirect_to @maplocation, notice: 'Maplocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @maplocation }
      else
        format.html { render :edit }
        format.json { render json: @maplocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maplocations/1
  # DELETE /maplocations/1.json
  def destroy
    @maplocation.destroy
    respond_to do |format|
      format.html { redirect_to maplocations_url, notice: 'Maplocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maplocation
      @maplocation = Maplocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maplocation_params
      params.require(:maplocation).permit(:address, :latitude, :longitude)
    end
end
