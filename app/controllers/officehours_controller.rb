class OfficehoursController < ApplicationController
  # GET /officehours
  # GET /officehours.json
  def index
    @officehours = Officehour.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @officehours }
    end
  end

  # GET /officehours/1
  # GET /officehours/1.json
  def show
    @officehour = Officehour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @officehour }
    end
  end

  # GET /officehours/new
  # GET /officehours/new.json
  def new
    @officehour = Officehour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @officehour }
    end
  end

  # GET /officehours/1/edit
  def edit
    @officehour = Officehour.find(params[:id])
  end

  # POST /officehours
  # POST /officehours.json
  def create
    @officehour = Officehour.new(params[:officehour])

    respond_to do |format|
      if @officehour.save
        format.html { redirect_to @officehour, notice: 'Officehour was successfully created.' }
        format.json { render json: @officehour, status: :created, location: @officehour }
      else
        format.html { render action: "new" }
        format.json { render json: @officehour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /officehours/1
  # PUT /officehours/1.json
  def update
    @officehour = Officehour.find(params[:id])

    respond_to do |format|
      if @officehour.update_attributes(params[:officehour])
        format.html { redirect_to @officehour, notice: 'Officehour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @officehour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /officehours/1
  # DELETE /officehours/1.json
  def destroy
    @officehour = Officehour.find(params[:id])
    @officehour.destroy

    respond_to do |format|
      format.html { redirect_to officehours_url }
      format.json { head :no_content }
    end
  end
end
