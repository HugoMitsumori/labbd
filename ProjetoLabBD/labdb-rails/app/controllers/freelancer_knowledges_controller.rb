class FreelancerKnowledgesController < ApplicationController
  before_action :set_freelancer_knowledge, only: [:show, :edit, :update, :destroy]

  # GET /freelancer_knowledges
  # GET /freelancer_knowledges.json
  def index
    @freelancer_knowledges = FreelancerKnowledge.all
  end

  # GET /freelancer_knowledges/1
  # GET /freelancer_knowledges/1.json
  def show
  end

  # GET /freelancer_knowledges/new
  def new
    @freelancer_knowledge = FreelancerKnowledge.new
  end

  # GET /freelancer_knowledges/1/edit
  def edit
  end

  # POST /freelancer_knowledges
  # POST /freelancer_knowledges.json
  def create
    @freelancer_knowledge = FreelancerKnowledge.new(freelancer_knowledge_params)

    respond_to do |format|
      if @freelancer_knowledge.save
        format.html { redirect_to @freelancer_knowledge, notice: 'Freelancer knowledge was successfully created.' }
        format.json { render :show, status: :created, location: @freelancer_knowledge }
      else
        format.html { render :new }
        format.json { render json: @freelancer_knowledge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /freelancer_knowledges/1
  # PATCH/PUT /freelancer_knowledges/1.json
  def update
    respond_to do |format|
      if @freelancer_knowledge.update(freelancer_knowledge_params)
        format.html { redirect_to @freelancer_knowledge, notice: 'Freelancer knowledge was successfully updated.' }
        format.json { render :show, status: :ok, location: @freelancer_knowledge }
      else
        format.html { render :edit }
        format.json { render json: @freelancer_knowledge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /freelancer_knowledges/1
  # DELETE /freelancer_knowledges/1.json
  def destroy
    @freelancer_knowledge.destroy
    respond_to do |format|
      format.html { redirect_to freelancer_knowledges_url, notice: 'Freelancer knowledge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freelancer_knowledge
      @freelancer_knowledge = FreelancerKnowledge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def freelancer_knowledge_params
      params.require(:freelancer_knowledge).permit(:freelancer_login, :knowledge_name, :certificates)
    end
end
