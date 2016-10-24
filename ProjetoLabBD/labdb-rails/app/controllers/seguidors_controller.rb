class SeguidorsController < ApplicationController
  before_action :set_seguidor, only: [:show, :edit, :update, :destroy]

  # GET /seguidors
  # GET /seguidors.json
  def index
    @seguidors = Seguidor.all
  end

  # GET /seguidors/1
  # GET /seguidors/1.json
  def show
  end

  # GET /seguidors/new
  def new
    @seguidor = Seguidor.new
  end

  # GET /seguidors/1/edit
  def edit
  end

  # POST /seguidors
  # POST /seguidors.json
  def create
    @seguidor = Seguidor.new(seguidor_params)

    respond_to do |format|
      if @seguidor.save
        format.html { redirect_to @seguidor, notice: 'Seguidor was successfully created.' }
        format.json { render :show, status: :created, location: @seguidor }
      else
        format.html { render :new }
        format.json { render json: @seguidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seguidors/1
  # PATCH/PUT /seguidors/1.json
  def update
    respond_to do |format|
      if @seguidor.update(seguidor_params)
        format.html { redirect_to @seguidor, notice: 'Seguidor was successfully updated.' }
        format.json { render :show, status: :ok, location: @seguidor }
      else
        format.html { render :edit }
        format.json { render json: @seguidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seguidors/1
  # DELETE /seguidors/1.json
  def destroy
    @seguidor.destroy
    respond_to do |format|
      format.html { redirect_to seguidors_url, notice: 'Seguidor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seguidor
      @seguidor = Seguidor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seguidor_params
      params.require(:seguidor).permit(:login_seguidor, :login_seguido)
    end
end
