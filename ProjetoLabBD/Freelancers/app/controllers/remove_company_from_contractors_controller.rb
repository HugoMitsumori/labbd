class RemoveCompanyFromContractorsController < ApplicationController
  before_action :set_remove_company_from_contractor, only: [:show, :edit, :update, :destroy]

  # GET /remove_company_from_contractors
  # GET /remove_company_from_contractors.json
  def index
    @remove_company_from_contractors = RemoveCompanyFromContractor.all
  end

  # GET /remove_company_from_contractors/1
  # GET /remove_company_from_contractors/1.json
  def show
  end

  # GET /remove_company_from_contractors/new
  def new
    @remove_company_from_contractor = RemoveCompanyFromContractor.new
  end

  # GET /remove_company_from_contractors/1/edit
  def edit
  end

  # POST /remove_company_from_contractors
  # POST /remove_company_from_contractors.json
  def create
    @remove_company_from_contractor = RemoveCompanyFromContractor.new(remove_company_from_contractor_params)

    respond_to do |format|
      if @remove_company_from_contractor.save
        format.html { redirect_to @remove_company_from_contractor, notice: 'Remove company from contractor was successfully created.' }
        format.json { render :show, status: :created, location: @remove_company_from_contractor }
      else
        format.html { render :new }
        format.json { render json: @remove_company_from_contractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /remove_company_from_contractors/1
  # PATCH/PUT /remove_company_from_contractors/1.json
  def update
    respond_to do |format|
      if @remove_company_from_contractor.update(remove_company_from_contractor_params)
        format.html { redirect_to @remove_company_from_contractor, notice: 'Remove company from contractor was successfully updated.' }
        format.json { render :show, status: :ok, location: @remove_company_from_contractor }
      else
        format.html { render :edit }
        format.json { render json: @remove_company_from_contractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remove_company_from_contractors/1
  # DELETE /remove_company_from_contractors/1.json
  def destroy
    @remove_company_from_contractor.destroy
    respond_to do |format|
      format.html { redirect_to remove_company_from_contractors_url, notice: 'Remove company from contractor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remove_company_from_contractor
      @remove_company_from_contractor = RemoveCompanyFromContractor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def remove_company_from_contractor_params
      params.require(:remove_company_from_contractor).permit(:company_id)
    end
end
