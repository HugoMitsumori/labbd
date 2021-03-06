class ContratantesController < ApplicationController
  before_action :set_contratante, only: [:show, :edit, :update, :destroy]

  # GET /contratantes
  # GET /contratantes.json
  def index
    @contratantes = Contratante.all
  end

  # GET /contratantes/1
  # GET /contratantes/1.json
  def show
  end

  # GET /contratantes/new
  def new
    @contratante = Contratante.new
  end

  # GET /contratantes/1/edit
  def edit
  end

  # POST /contratantes
  # POST /contratantes.json
  def create
    @contratante = Contratante.new(contratante_params)

    respond_to do |format|
      if @contratante.save
        format.html { redirect_to @contratante, notice: 'Contratante was successfully created.' }
        format.json { render :show, status: :created, location: @contratante }
      else
        format.html { render :new }
        format.json { render json: @contratante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contratantes/1
  # PATCH/PUT /contratantes/1.json
  def update
    respond_to do |format|
      if @contratante.update(contratante_params)
        format.html { redirect_to @contratante, notice: 'Contratante was successfully updated.' }
        format.json { render :show, status: :ok, location: @contratante }
      else
        format.html { render :edit }
        format.json { render json: @contratante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contratantes/1
  # DELETE /contratantes/1.json
  def destroy
    @contratante.destroy
    respond_to do |format|
      format.html { redirect_to contratantes_url, notice: 'Contratante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contratante
      @contratante = Contratante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contratante_params
      params.require(:contratante).permit(:login, :cnnpj_empresa, :cargo)
    end
end
