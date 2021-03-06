class SolutionsController < ApplicationController
  before_action :set_solution, only: [:show, :edit, :update, :destroy, :accept]

  # GET /solutions
  # GET /solutions.json
  def index
    @solutions = Solution.all
  end

  # GET /solutions/1
  # GET /solutions/1.json
  def show
    @solution = Solution.find(params[:id])
  end

  # GET /solutions/new
  def new
    @solution = Solution.new
    @service_id = params[:format]
  end

  # GET /solutions/1/edit
  def edit
  end

  # POST /solutions
  # POST /solutions.json
  def create
    @solution = Solution.new(solution_params)
    @solution.user_id = @current_user.id
    @solution.solution_id = 0
    @solution.accepted = false

    respond_to do |format|
      if @solution.save
        format.html { redirect_to @solution, notice: 'Solution was successfully created.' }
        format.json { render :show, status: :created, location: @solution }
        SolutionGraph.create({:code => @solution.id, :desc => @solution.description}).save
        @solution_graph = SolutionGraph.find_by(code: @solution.id)
        @individual = Individual.find_by(login: @current_user.login )
        @solution_graph.creator = @individual
        @service_graph = ServiceGraph.find_by(code: @solution.service_id)
        @solution_graph.service = @service_graph
      else
        format.html { render :new }
        format.json { render json: @solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solutions/1
  # PATCH/PUT /solutions/1.json
  def update
    respond_to do |format|
      if @solution.update(solution_params)
        format.html { redirect_to @solution, notice: 'Solution was successfully updated.' }
        format.json { render :show, status: :ok, location: @solution }
      else
        format.html { render :edit }
        format.json { render json: @solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solutions/1
  # DELETE /solutions/1.json
  def destroy
    @solution.destroy
    respond_to do |format|
      format.html { redirect_to solutions_url, notice: 'Solution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def accept
    @solution.update_column(:accepted, true)
    redirect_to request.referrer
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solution
      @solution = Solution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solution_params
      params.require(:solution).permit(:solution_id, :user_id, :service_id, :description)
    end
    def service_params
      if(params[:service] != nil)
        params.require(:service).permit(:contractor_id, :service_id, :solution_id, :service_name, :start_date, :end_date, :status, :price, :final_score)
      end
    end
end
