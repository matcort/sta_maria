class ContratosController < ApplicationController
  before_action :set_contrato,  only: [:show, :edit, :update, :destroy]
  before_action :set_local

  # GET /contratos
  # GET /contratos.json
  def index
   #@local = Local.find(params[:local_id])
    @contratos = Contrato.all
  end

  # GET /contratos/1
  # GET /contratos/1.json
  def show
  end

  # GET /contratos/new
  def new
    
    #@local=Local.find(params[:local_id])
    @contrato = @local.contrato.build
  end

  # GET /contratos/1/edit
  def edit
  end
  
  def calendar
  @date = params[:date] || Date.today
  # will set @date to Date.today if params[:date].nil?
end 

  # POST /contratos
  # POST /contratos.json
  def create
    @contrato= @local.contrato.build(contrato_params)

    respond_to do |format|
      if @contrato.save
        format.html { redirect_to [@local, @contrato], notice: 'Contrato was successfully created.' }
        format.json { render :show, status: :created, location: @contrato }
      else
        format.html { render :new }
        format.json { render json: @contrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contratos/1
  # PATCH/PUT /contratos/1.json
  def update
    respond_to do |format|
      if @contrato.update(contrato_params)
        format.html { redirect_to [@local, @contrato], notice: 'Contrato was successfully updated.' }
        format.json { render :show, status: :ok, location: @contrato }
      else
        format.html { render :edit }
        format.json { render json: @contrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contratos/1
  # DELETE /contratos/1.json
  def destroy
    @contrato.destroy
    respond_to do |format|
      format.html { redirect_to contratos_url, notice: 'Contrato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contrato
      @contrato = Contrato.find(params[:id])
    end
    def set_local
      @local=Local.find(params[:local_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contrato_params
      params.require(:contrato).permit(:fechaInicio, :fechaFin, :montoArriendo, :documento, :estado, :arrendatario_id, :administrador_id, :local_id)
    end
end
