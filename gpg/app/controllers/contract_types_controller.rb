class ContractTypesController < ApplicationController
  # GET /contract_types
  # GET /contract_types.json
  def index
    @contract_types = ContractType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contract_types }
    end
  end

  # GET /contract_types/1
  # GET /contract_types/1.json
  def show
    @contract_type = ContractType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contract_type }
    end
  end

  # GET /contract_types/new
  # GET /contract_types/new.json
  def new
    @contract_type = ContractType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contract_type }
    end
  end

  # GET /contract_types/1/edit
  def edit
    @contract_type = ContractType.find(params[:id])
  end

  # POST /contract_types
  # POST /contract_types.json
  def create
    @contract_type = ContractType.new(params[:contract_type])

    respond_to do |format|
      if @contract_type.save
        format.html { redirect_to @contract_type, notice: 'Contract type was successfully created.' }
        format.json { render json: @contract_type, status: :created, location: @contract_type }
      else
        format.html { render action: "new" }
        format.json { render json: @contract_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contract_types/1
  # PUT /contract_types/1.json
  def update
    @contract_type = ContractType.find(params[:id])

    respond_to do |format|
      if @contract_type.update_attributes(params[:contract_type])
        format.html { redirect_to @contract_type, notice: 'Contract type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @contract_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_types/1
  # DELETE /contract_types/1.json
  def destroy
    @contract_type = ContractType.find(params[:id])
    @contract_type.destroy

    respond_to do |format|
      format.html { redirect_to contract_types_url }
      format.json { head :ok }
    end
  end
end
