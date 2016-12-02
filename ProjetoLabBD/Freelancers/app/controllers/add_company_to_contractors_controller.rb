class AddCompanyToContractorsController < ApplicationController
  before_action :set_add_company_to_contractor, only: [:show, :edit, :update, :destroy]

  # GET /add_company_to_contractors
  # GET /add_company_to_contractors.json
  def index
    @add_company_to_contractors = AddCompanyToContractor.all
  end

  # GET /add_company_to_contractors/1
  # GET /add_company_to_contractors/1.json
  def show
  end

  # GET /add_company_to_contractors/new
  def new
    @add_company_to_contractor = AddCompanyToContractor.new
  end

  # GET /add_company_to_contractors/1/edit
  def edit
  end

  # POST /add_company_to_contractors
  # POST /add_company_to_contractors.json
  def create
    @add_company_to_contractor = AddCompanyToContractor.new(add_company_to_contractor_params)

    respond_to do |format|
      if @add_company_to_contractor.save
        format.html { redirect_to @add_company_to_contractor, notice: 'Add company to contractor was successfully created.' }
        format.json { render :show, status: :created, location: @add_company_to_contractor }
      else
        format.html { render :new }
        format.json { render json: @add_company_to_contractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_company_to_contractors/1
  # PATCH/PUT /add_company_to_contractors/1.json
  def update
    respond_to do |format|
      if @add_company_to_contractor.update(add_company_to_contractor_params)
        format.html { redirect_to @add_company_to_contractor, notice: 'Add company to contractor was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_company_to_contractor }
      else
        format.html { render :edit }
        format.json { render json: @add_company_to_contractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_company_to_contractors/1
  # DELETE /add_company_to_contractors/1.json
  def destroy
    @add_company_to_contractor.destroy
    respond_to do |format|
      format.html { redirect_to add_company_to_contractors_url, notice: 'Add company to contractor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_company_to_contractor
      @add_company_to_contractor = AddCompanyToContractor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_company_to_contractor_params
      params.require(:add_company_to_contractor).permit(:company_id)
    end
end
