class FlowchartsController < ApplicationController
  # GET /flowcharts
  # GET /flowcharts.json
  def index
    @flowcharts = Flowchart.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @flowcharts }
    end
  end

  # GET /flowcharts/1
  # GET /flowcharts/1.json
  def show
    @flowchart = Flowchart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @flowchart }
    end
  end

  # GET /flowcharts/new
  # GET /flowcharts/new.json
  def new
    @flowchart = Flowchart.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @flowchart }
    end
  end

  # GET /flowcharts/1/edit
  def edit
    @flowchart = Flowchart.find(params[:id])
  end

  # POST /flowcharts
  # POST /flowcharts.json
  def create
    @flowchart = Flowchart.new(params[:flowchart])

    respond_to do |format|
      if @flowchart.save
	format.html { redirect_to @flowchart, notice: 'Flowchart was successfully created.' }
	format.json { render json: @flowchart, status: :created, location: @flowchart }
      else
	format.html { render action: "new" }
	format.json { render json: @flowchart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /flowcharts/1
  # PUT /flowcharts/1.json
  def update
    @flowchart = Flowchart.find(params[:id])

    respond_to do |format|
      if @flowchart.update_attributes(params[:flowchart])
	format.html { redirect_to @flowchart, notice: 'Flowchart was successfully updated.' }
	format.json { head :no_content }
      else
	format.html { render action: "edit" }
	format.json { render json: @flowchart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flowcharts/1
  # DELETE /flowcharts/1.json
  def destroy
    @flowchart = Flowchart.find(params[:id])
    @flowchart.destroy

    respond_to do |format|
      format.html { redirect_to flowcharts_url }
      format.json { head :no_content }
    end
  end
end
