class ServiceGraphsController < ApplicationController
  before_action :set_service_graph, only: [:show, :edit, :update, :destroy]


  # GET /service_graphs
  # GET /service_graphs.json
  def index
    @service_graphs = ServiceGraph.all
  end

  # GET /service_graphs/1
  # GET /service_graphs/1.json
  def show
  end

  # comandos de manipulação
  # ServiceGraph.create({:login => "login", :name => "name"}).save
  # ServiceGraph.all = array de ServiceGraphs
  # ServiceGraph.followers << @service_graph2

  # GET /service_graphs/new
  def new
    @service_graph = ServiceGraph.new
  end


  # GET /service_graphs/1/edit
  def edit
  end

  # POST /service_graphs
  # POST /service_graphs.json
  def create
    @service_graph = ServiceGraph.new(service_graph_params)

    respond_to do |format|
      if @service_graph.save
        format.html { redirect_to @service_graph, notice: 'service_graph was successfully created.' }
        format.json { render :show, status: :created, location: @service_graph }
      else
        format.html { render :new }
        format.json { render json: @service_graph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_graphs/1
  # PATCH/PUT /service_graphs/1.json
  def update
    respond_to do |format|
      if @service_graph.update(service_graph_params)
        format.html { redirect_to @service_graph, notice: 'service_graph was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_graph }
      else
        format.html { render :edit }
        format.json { render json: @service_graph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_graphs/1
  # DELETE /service_graphs/1.json
  def destroy
    @service_graph.destroy
    respond_to do |format|
      format.html { redirect_to service_graphs_url, notice: 'service_graph was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_graph
      @service_graph = service_graph.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_graph_params
      params.require(:service_graph).permit(:code, :name)
    end
end
