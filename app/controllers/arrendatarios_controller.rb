class ArrendatariosController < ApplicationController
  before_action :set_arrendatario, only: [:show, :edit, :update, :destroy]

  # GET /arrendatarios
  # GET /arrendatarios.json
  def index
    @arrendatarios = Arrendatario.all
  end

  # GET /arrendatarios/1
  # GET /arrendatarios/1.json
  def show
  end

  # GET /arrendatarios/new
  def new
    @arrendatario = Arrendatario.new
  end

  # GET /arrendatarios/1/edit
  def edit
  end

  # POST /arrendatarios
  # POST /arrendatarios.json
  def create
    @arrendatario = Arrendatario.new(arrendatario_params)

    respond_to do |format|
      if @arrendatario.save
        format.html { redirect_to @arrendatario, notice: 'Arrendatario was successfully created.' }
        format.json { render :show, status: :created, location: @arrendatario }
      else
        format.html { render :new }
        format.json { render json: @arrendatario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arrendatarios/1
  # PATCH/PUT /arrendatarios/1.json
  def update
    respond_to do |format|
      if @arrendatario.update(arrendatario_params)
        format.html { redirect_to @arrendatario, notice: 'Arrendatario was successfully updated.' }
        format.json { render :show, status: :ok, location: @arrendatario }
      else
        format.html { render :edit }
        format.json { render json: @arrendatario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arrendatarios/1
  # DELETE /arrendatarios/1.json
  def destroy
    @arrendatario.destroy
    respond_to do |format|
      format.html { redirect_to arrendatarios_url, notice: 'Arrendatario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arrendatario
      @arrendatario = Arrendatario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arrendatario_params
      params.require(:arrendatario).permit(:nombre, :rut, :telefono, :mail, :password_digest)
    end
end
