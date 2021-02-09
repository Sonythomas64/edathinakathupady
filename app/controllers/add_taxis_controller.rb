class AddTaxisController < ApplicationController
  before_action :set_add_taxi, only: %i[ show edit update destroy ]

  # GET /add_taxis or /add_taxis.json
  def index
    @add_taxis = AddTaxi.all
  end

  # GET /add_taxis/1 or /add_taxis/1.json
  def show
  end

  # GET /add_taxis/new
  def new
    @add_taxi = AddTaxi.new
  end

  # GET /add_taxis/1/edit
  def edit
  end

  # POST /add_taxis or /add_taxis.json
  def create
    @add_taxi = AddTaxi.new(add_taxi_params)

    respond_to do |format|
      if @add_taxi.save
        format.html { redirect_to @add_taxi, notice: "Add taxi was successfully created." }
        format.json { render :show, status: :created, location: @add_taxi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @add_taxi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_taxis/1 or /add_taxis/1.json
  def update
    respond_to do |format|
      if @add_taxi.update(add_taxi_params)
        format.html { redirect_to @add_taxi, notice: "Add taxi was successfully updated." }
        format.json { render :show, status: :ok, location: @add_taxi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @add_taxi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_taxis/1 or /add_taxis/1.json
  def destroy
    @add_taxi.destroy
    respond_to do |format|
      format.html { redirect_to add_taxis_url, notice: "Add taxi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_taxi
      @add_taxi = AddTaxi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_taxi_params
      params.require(:add_taxi).permit(:Vehicle, :TaxiHoldername, :Registrationnumber, :Phonenumber)
    end
end
