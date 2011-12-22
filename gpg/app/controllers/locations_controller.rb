class LocationsController < ApplicationController

  before_filter :find_customer, :except => [:index]

  # GET /locations
  # GET /locationss.json
  def index
    if params[:search].present?
      @locations = Location.near(params[:search], 50, :order => :distance)
    else
      @locations = Location.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @locations }
    end
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
    @location = Location.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @location }
    end
  end

  # GET /locations/new
  # GET /locations/new.json
  def new
    @location = @customer.locations.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @location }
    end
  end

  # GET /locations/1/edit
  def edit
    @location = @customer.locations.find(params[:id])
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(params[:location])

    respond_to do |format|
      if (@customer.locations << @location)
        format.html { redirect_to @customer, notice: 'Location was successfully created.' }
        format.json { render json: @customer, status: :created, location: @location }
      else
        format.html { render action: "new" }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /locations/1
  # PUT /locations/1.json
  def update
    @location = @customer.locations.find(params[:id])

    respond_to do |format|
      if @location.update_attributes(params[:location])
        format.html { redirect_to @customer, notice: 'Location was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location = @customer.locations.find(params[:id])
    @customer.locations.destroy(@location)

    respond_to do |format|
      format.html { redirect_to customer_url(@customer) }
      format.json { head :ok }
    end
  end

  private

  def find_customer
    @customer_id = params[:customer_id]
    redirect_to customers_url unless @customer_id
    @customer = Customer.find(@customer_id)
  end

end
