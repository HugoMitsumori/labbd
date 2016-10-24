class ConhecimentoRequisitadosController < ApplicationController
  before_action :set_conhecimento_requisitado, only: [:show, :edit, :update, :destroy]

  # GET /conhecimento_requisitados
  # GET /conhecimento_requisitados.json
  def index
    @conhecimento_requisitados = ConhecimentoRequisitado.all
  end

  # GET /conhecimento_requisitados/1
  # GET /conhecimento_requisitados/1.json
  def show
  end

  # GET /conhecimento_requisitados/new
  def new
    @conhecimento_requisitado = ConhecimentoRequisitado.new
  end

  # GET /conhecimento_requisitados/1/edit
  def edit
  end

  # POST /conhecimento_requisitados
  # POST /conhecimento_requisitados.json
  def create
    @conhecimento_requisitado = ConhecimentoRequisitado.new(conhecimento_requisitado_params)

    respond_to do |format|
      if @conhecimento_requisitado.save
        format.html { redirect_to @conhecimento_requisitado, notice: 'Conhecimento requisitado was successfully created.' }
        format.json { render :show, status: :created, location: @conhecimento_requisitado }
      else
        format.html { render :new }
        format.json { render json: @conhecimento_requisitado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conhecimento_requisitados/1
  # PATCH/PUT /conhecimento_requisitados/1.json
  def update
    respond_to do |format|
      if @conhecimento_requisitado.update(conhecimento_requisitado_params)
        format.html { redirect_to @conhecimento_requisitado, notice: 'Conhecimento requisitado was successfully updated.' }
        format.json { render :show, status: :ok, location: @conhecimento_requisitado }
      else
        format.html { render :edit }
        format.json { render json: @conhecimento_requisitado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conhecimento_requisitados/1
  # DELETE /conhecimento_requisitados/1.json
  def destroy
    @conhecimento_requisitado.destroy
    respond_to do |format|
      format.html { redirect_to conhecimento_requisitados_url, notice: 'Conhecimento requisitado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conhecimento_requisitado
      @conhecimento_requisitado = ConhecimentoRequisitado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conhecimento_requisitado_params
      params.require(:conhecimento_requisitado).permit(:nome_conhecimento, :codigo_servico)
    end
end
