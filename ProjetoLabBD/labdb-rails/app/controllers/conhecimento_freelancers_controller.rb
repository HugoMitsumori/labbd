class ConhecimentoFreelancersController < ApplicationController
  before_action :set_conhecimento_freelancer, only: [:show, :edit, :update, :destroy]

  # GET /conhecimento_freelancers
  # GET /conhecimento_freelancers.json
  def index
    @conhecimento_freelancers = ConhecimentoFreelancer.all
  end

  # GET /conhecimento_freelancers/1
  # GET /conhecimento_freelancers/1.json
  def show
  end

  # GET /conhecimento_freelancers/new
  def new
    @conhecimento_freelancer = ConhecimentoFreelancer.new
  end

  # GET /conhecimento_freelancers/1/edit
  def edit
  end

  # POST /conhecimento_freelancers
  # POST /conhecimento_freelancers.json
  def create
    @conhecimento_freelancer = ConhecimentoFreelancer.new(conhecimento_freelancer_params)

    respond_to do |format|
      if @conhecimento_freelancer.save
        format.html { redirect_to @conhecimento_freelancer, notice: 'Conhecimento freelancer was successfully created.' }
        format.json { render :show, status: :created, location: @conhecimento_freelancer }
      else
        format.html { render :new }
        format.json { render json: @conhecimento_freelancer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conhecimento_freelancers/1
  # PATCH/PUT /conhecimento_freelancers/1.json
  def update
    respond_to do |format|
      if @conhecimento_freelancer.update(conhecimento_freelancer_params)
        format.html { redirect_to @conhecimento_freelancer, notice: 'Conhecimento freelancer was successfully updated.' }
        format.json { render :show, status: :ok, location: @conhecimento_freelancer }
      else
        format.html { render :edit }
        format.json { render json: @conhecimento_freelancer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conhecimento_freelancers/1
  # DELETE /conhecimento_freelancers/1.json
  def destroy
    @conhecimento_freelancer.destroy
    respond_to do |format|
      format.html { redirect_to conhecimento_freelancers_url, notice: 'Conhecimento freelancer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conhecimento_freelancer
      @conhecimento_freelancer = ConhecimentoFreelancer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conhecimento_freelancer_params
      params.require(:conhecimento_freelancer).permit(:login_freelancer, :nome_conhecimento, :certificados)
    end
end
