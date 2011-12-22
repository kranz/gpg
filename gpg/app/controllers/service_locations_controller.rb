class ServiceLocationsController < ApplicationController

  before_filter :find_contract

  # GET /service_locations/1
  # GET /service_locations/1.json
  def show
    @service_location = ServiceLocation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @service_location }
    end
  end

  # GET /service_locations/new
  # GET /service_locations/new.json
  def new
    @service_location = @contract.service_locations.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @service_location }
    end
  end

  # GET /service_locations/1/edit
  def edit
    @service_location = @contract.service_locations.find(params[:id])
  end

  # POST /service_locations
  # POST /service_locations.json
  def create
    @service_location = ServiceLocation.new(params[:service_location])

    respond_to do |format|
      if (@contract.service_locations << @service_location)
        format.html { redirect_to @contract, notice: 'Service location was successfully created.' }
        format.json { render json: @contract, status: :created, location: @service_location }
      else
        format.html { render action: "new" }
        format.json { render json: @service_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /service_locations/1
  # PUT /service_locations/1.json
  def update
    @service_location = @contract.service_locations.find(params[:id])

    respond_to do |format|
      if @service_location.update_attributes(params[:service_location])
        format.html { redirect_to @contract, notice: 'Service location was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @service_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_locations/1
  # DELETE /service_locations/1.json
  def destroy

    @service_location = @contract.service_locations.find(params[:id])
    @contract.service_locations.destroy(@service_location)

    respond_to do |format|
      format.html { redirect_to contract_url(@contract) }
      format.json { head :ok }
    end
  end      
  
  private

  def find_contract
    @contract_id = params[:contract_id]
    redirect_to contracts_url unless @contract_id
    @contract = Contract.find(@contract_id)
  end
  
end
