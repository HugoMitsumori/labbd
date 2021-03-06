class ConhecimentosController < ApplicationController
  before_action :set_conhecimento, only: [:show, :edit, :update, :destroy]

  # GET /conhecimentos
  # GET /conhecimentos.json
  def index
    @conhecimentos = Conhecimento.all
  end

  # GET /conhecimentos/1
  # GET /conhecimentos/1.json
  def show
  end

  # GET /conhecimentos/new
  def new
    @conhecimento = Conhecimento.new
  end

  # GET /conhecimentos/1/edit
  def edit
  end

  # POST /conhecimentos
  # POST /conhecimentos.json
  def create
    @conhecimento = Conhecimento.new(conhecimento_params)

    respond_to do |format|
      if @conhecimento.save
        format.html { redirect_to @conhecimento, notice: 'Conhecimento was successfully created.' }
        format.json { render :show, status: :created, location: @conhecimento }
      else
        format.html { render :new }
        format.json { render json: @conhecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conhecimentos/1
  # PATCH/PUT /conhecimentos/1.json
  def update
    respond_to do |format|
      if @conhecimento.update(conhecimento_params)
        format.html { redirect_to @conhecimento, notice: 'Conhecimento was successfully updated.' }
        format.json { render :show, status: :ok, location: @conhecimento }
      else
        format.html { render :edit }
        format.json { render json: @conhecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conhecimentos/1
  # DELETE /conhecimentos/1.json
  def destroy
    @conhecimento.destroy
    respond_to do |format|
      format.html { redirect_to conhecimentos_url, notice: 'Conhecimento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conhecimento
      @conhecimento = Conhecimento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conhecimento_params
      params.require(:conhecimento).permit(:nome, :descricao)
    end
end
