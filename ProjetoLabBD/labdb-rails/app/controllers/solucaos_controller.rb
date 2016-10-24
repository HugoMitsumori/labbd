class SolucaosController < ApplicationController
  before_action :set_solucao, only: [:show, :edit, :update, :destroy]

  # GET /solucaos
  # GET /solucaos.json
  def index
    @solucaos = Solucao.all
  end

  # GET /solucaos/1
  # GET /solucaos/1.json
  def show
  end

  # GET /solucaos/new
  def new
    @solucao = Solucao.new
  end

  # GET /solucaos/1/edit
  def edit
  end

  # POST /solucaos
  # POST /solucaos.json
  def create
    @solucao = Solucao.new(solucao_params)

    respond_to do |format|
      if @solucao.save
        format.html { redirect_to @solucao, notice: 'Solucao was successfully created.' }
        format.json { render :show, status: :created, location: @solucao }
      else
        format.html { render :new }
        format.json { render json: @solucao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solucaos/1
  # PATCH/PUT /solucaos/1.json
  def update
    respond_to do |format|
      if @solucao.update(solucao_params)
        format.html { redirect_to @solucao, notice: 'Solucao was successfully updated.' }
        format.json { render :show, status: :ok, location: @solucao }
      else
        format.html { render :edit }
        format.json { render json: @solucao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solucaos/1
  # DELETE /solucaos/1.json
  def destroy
    @solucao.destroy
    respond_to do |format|
      format.html { redirect_to solucaos_url, notice: 'Solucao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solucao
      @solucao = Solucao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solucao_params
      params.require(:solucao).permit(:id_solucao, :criador, :id_problema, :descricao)
    end
end
