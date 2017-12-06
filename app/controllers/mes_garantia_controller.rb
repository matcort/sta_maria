class MesGarantiaController < ApplicationController
  before_action :set_mes_garantium, only: [:show, :edit, :update, :destroy]

  # GET /mes_garantia
  # GET /mes_garantia.json
  def index
    @mes_garantia = MesGarantium.all
  end

  # GET /mes_garantia/1
  # GET /mes_garantia/1.json
  def show
  end

  # GET /mes_garantia/new
  def new
    @mes_garantium = MesGarantium.new
  end

  # GET /mes_garantia/1/edit
  def edit
  end

  # POST /mes_garantia
  # POST /mes_garantia.json
  def create
    @mes_garantium = MesGarantium.new(mes_garantium_params)

    respond_to do |format|
      if @mes_garantium.save
        format.html { redirect_to @mes_garantium, notice: 'Mes garantium was successfully created.' }
        format.json { render :show, status: :created, location: @mes_garantium }
      else
        format.html { render :new }
        format.json { render json: @mes_garantium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mes_garantia/1
  # PATCH/PUT /mes_garantia/1.json
  def update
    respond_to do |format|
      if @mes_garantium.update(mes_garantium_params)
        format.html { redirect_to @mes_garantium, notice: 'Mes garantium was successfully updated.' }
        format.json { render :show, status: :ok, location: @mes_garantium }
      else
        format.html { render :edit }
        format.json { render json: @mes_garantium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mes_garantia/1
  # DELETE /mes_garantia/1.json
  def destroy
    @mes_garantium.destroy
    respond_to do |format|
      format.html { redirect_to mes_garantia_url, notice: 'Mes garantium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mes_garantium
      @mes_garantium = MesGarantium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mes_garantium_params
      params.require(:mes_garantium).permit(:fecha, :monto, :local_id)
    end
end
