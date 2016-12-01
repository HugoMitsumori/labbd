class AddForeignKeyToFreelancerKnowledgesController < ApplicationController
  before_action :set_add_foreign_key_to_freelancer_knowledge, only: [:show, :edit, :update, :destroy]

  # GET /add_foreign_key_to_freelancer_knowledges
  # GET /add_foreign_key_to_freelancer_knowledges.json
  def index
    @add_foreign_key_to_freelancer_knowledges = AddForeignKeyToFreelancerKnowledge.all
  end

  # GET /add_foreign_key_to_freelancer_knowledges/1
  # GET /add_foreign_key_to_freelancer_knowledges/1.json
  def show
  end

  # GET /add_foreign_key_to_freelancer_knowledges/new
  def new
    @add_foreign_key_to_freelancer_knowledge = AddForeignKeyToFreelancerKnowledge.new
  end

  # GET /add_foreign_key_to_freelancer_knowledges/1/edit
  def edit
  end

  # POST /add_foreign_key_to_freelancer_knowledges
  # POST /add_foreign_key_to_freelancer_knowledges.json
  def create
    @add_foreign_key_to_freelancer_knowledge = AddForeignKeyToFreelancerKnowledge.new(add_foreign_key_to_freelancer_knowledge_params)

    respond_to do |format|
      if @add_foreign_key_to_freelancer_knowledge.save
        format.html { redirect_to @add_foreign_key_to_freelancer_knowledge, notice: 'Add foreign key to freelancer knowledge was successfully created.' }
        format.json { render :show, status: :created, location: @add_foreign_key_to_freelancer_knowledge }
      else
        format.html { render :new }
        format.json { render json: @add_foreign_key_to_freelancer_knowledge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_foreign_key_to_freelancer_knowledges/1
  # PATCH/PUT /add_foreign_key_to_freelancer_knowledges/1.json
  def update
    respond_to do |format|
      if @add_foreign_key_to_freelancer_knowledge.update(add_foreign_key_to_freelancer_knowledge_params)
        format.html { redirect_to @add_foreign_key_to_freelancer_knowledge, notice: 'Add foreign key to freelancer knowledge was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_foreign_key_to_freelancer_knowledge }
      else
        format.html { render :edit }
        format.json { render json: @add_foreign_key_to_freelancer_knowledge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_foreign_key_to_freelancer_knowledges/1
  # DELETE /add_foreign_key_to_freelancer_knowledges/1.json
  def destroy
    @add_foreign_key_to_freelancer_knowledge.destroy
    respond_to do |format|
      format.html { redirect_to add_foreign_key_to_freelancer_knowledges_url, notice: 'Add foreign key to freelancer knowledge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_foreign_key_to_freelancer_knowledge
      @add_foreign_key_to_freelancer_knowledge = AddForeignKeyToFreelancerKnowledge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_foreign_key_to_freelancer_knowledge_params
      params.require(:add_foreign_key_to_freelancer_knowledge).permit(:knowledge_id, :freelancer_id)
    end
end
