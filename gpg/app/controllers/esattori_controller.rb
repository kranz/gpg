class EsattoriController < ApplicationController
  # GET /esattori
  # GET /esattori.json
  def index
    @esattori = Esattore.page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @esattori }
    end
  end

  # GET /esattori/1
  # GET /esattori/1.json
  def show
    @esattore = Esattore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @esattore }
    end
  end

  # GET /esattori/new
  # GET /esattori/new.json
  def new
    @esattore = Esattore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @esattore }
    end
  end

  # GET /esattori/1/edit
  def edit
    @esattore = Esattore.find(params[:id])
  end

  # POST /esattori
  # POST /esattori.json
  def create
    @esattore = Esattore.new(params[:esattore])

    respond_to do |format|
      if @esattore.save
        format.html { redirect_to @esattore, notice: 'Esattore was successfully created.' }
        format.json { render json: @esattore, status: :created, location: @esattore }
      else
        format.html { render action: "new" }
        format.json { render json: @esattore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /esattori/1
  # PUT /esattori/1.json
  def update
    @esattore = Esattore.find(params[:id])

    respond_to do |format|
      if @esattore.update_attributes(params[:esattore])
        format.html { redirect_to @esattore, notice: 'Esattore was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @esattore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /esattori/1
  # DELETE /esattori/1.json
  def destroy
    @esattore = Esattore.find(params[:id])
    @esattore.destroy

    respond_to do |format|
      format.html { redirect_to esattori_url }
      format.json { head :ok }
    end
  end
end
