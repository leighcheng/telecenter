class CallcentersController < ApplicationController
  # GET /callcenters
  # GET /callcenters.json
  def index
    @callcenters = Callcenter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @callcenters }
    end
  end

  # GET /callcenters/1
  # GET /callcenters/1.json
  def show
    @callcenter = Callcenter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @callcenter }
    end
  end

  # GET /callcenters/new
  # GET /callcenters/new.json
  def new
    @callcenter = Callcenter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @callcenter }
    end
  end

  # GET /callcenters/1/edit
  def edit
    @callcenter = Callcenter.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @callcenter }
    end    
  end

  # POST /callcenters
  # POST /callcenters.json
  def create
    @callcenter = Callcenter.new(params[:callcenter])

    respond_to do |format|
      if @callcenter.save
        format.html { redirect_to @callcenter, notice: 'Callcenter was successfully created.' }
        format.json { render json: @callcenter, status: :created, location: @callcenter }
      else
        format.html { render action: "new" }
        format.json { render json: @callcenter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /callcenters/1
  # PUT /callcenters/1.json
  def update
    @callcenter = Callcenter.find(params[:id])

    respond_to do |format|
      if @callcenter.update_attributes(params[:callcenter])
        format.html { redirect_to @callcenter, notice: 'Callcenter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @callcenter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /callcenters/1
  # DELETE /callcenters/1.json
  def destroy
    @callcenter = Callcenter.find(params[:id])
    @callcenter.destroy

    respond_to do |format|
      format.html { redirect_to callcenters_url }
      format.json { head :no_content }
    end
  end
end
