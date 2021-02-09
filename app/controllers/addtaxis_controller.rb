class AddtaxisController < ApplicationController
  before_action :set_addtaxi, only: %i[ show edit update destroy ]

  # GET /addtaxis or /addtaxis.json
  def index
    @addtaxis = Addtaxi.all
  end

  # GET /addtaxis/1 or /addtaxis/1.json
  def show
  end

  # GET /addtaxis/new
  def new
    @addtaxi = Addtaxi.new
  end

  # GET /addtaxis/1/edit
  def edit
  end

  # POST /addtaxis or /addtaxis.json
  def create
    @addtaxi = Addtaxi.new(addtaxi_params)

    respond_to do |format|
      if @addtaxi.save
        format.html { redirect_to @addtaxi, notice: "Addtaxi was successfully created." }
        format.json { render :show, status: :created, location: @addtaxi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @addtaxi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addtaxis/1 or /addtaxis/1.json
  def update
    respond_to do |format|
      if @addtaxi.update(addtaxi_params)
        format.html { redirect_to @addtaxi, notice: "Addtaxi was successfully updated." }
        format.json { render :show, status: :ok, location: @addtaxi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @addtaxi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addtaxis/1 or /addtaxis/1.json
  def destroy
    @addtaxi.destroy
    respond_to do |format|
      format.html { redirect_to addtaxis_url, notice: "Addtaxi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addtaxi
      @addtaxi = Addtaxi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def addtaxi_params
      params.require(:addtaxi).permit(:Vehicle, :Taxi, :Holdername, :Registration, :number, :Phone, :number)
    end
end
