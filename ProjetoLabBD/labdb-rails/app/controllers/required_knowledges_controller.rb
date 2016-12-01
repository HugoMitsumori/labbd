class RequiredKnowledgesController < ApplicationController
  before_action :set_required_knowledge, only: [:show, :edit, :update, :destroy]

  # GET /required_knowledges
  # GET /required_knowledges.json
  def index
    @required_knowledges = RequiredKnowledge.all
  end

  # GET /required_knowledges/1
  # GET /required_knowledges/1.json
  def show
  end

  # GET /required_knowledges/new
  def new
    @required_knowledge = RequiredKnowledge.new
  end

  # GET /required_knowledges/1/edit
  def edit
  end

  # POST /required_knowledges
  # POST /required_knowledges.json
  def create
    @required_knowledge = RequiredKnowledge.new(required_knowledge_params)

    respond_to do |format|
      if @required_knowledge.save
        format.html { redirect_to @required_knowledge, notice: 'Required knowledge was successfully created.' }
        format.json { render :show, status: :created, location: @required_knowledge }
      else
        format.html { render :new }
        format.json { render json: @required_knowledge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /required_knowledges/1
  # PATCH/PUT /required_knowledges/1.json
  def update
    respond_to do |format|
      if @required_knowledge.update(required_knowledge_params)
        format.html { redirect_to @required_knowledge, notice: 'Required knowledge was successfully updated.' }
        format.json { render :show, status: :ok, location: @required_knowledge }
      else
        format.html { render :edit }
        format.json { render json: @required_knowledge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /required_knowledges/1
  # DELETE /required_knowledges/1.json
  def destroy
    @required_knowledge.destroy
    respond_to do |format|
      format.html { redirect_to required_knowledges_url, notice: 'Required knowledge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_required_knowledge
      @required_knowledge = RequiredKnowledge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def required_knowledge_params
      params.require(:required_knowledge).permit(:knowledge_name, :service_code)
    end
end
