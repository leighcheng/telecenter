class VsvmsController < ApplicationController

  def index
    @vsvms = Vsvm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vsvms }
    end
  end


  def show
    @vsvm = Vsvm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vsvm }
    end
  end


  def new
    @vsvm = Vsvm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vsvm }
    end
  end

  # GET /msgs/1/edit
  def edit
    @vsvm = Vsvm.find(params[:id])
  end


  def create
    @vsvm = Vsvm.new(params[:vsvm])

    respond_to do |format|
      if @vsvm.save
        format.html { redirect_to @vsvm, notice: 'Msg was successfully created.' }
        format.json { render json: @vsvm, status: :created, location: @vsvm }
      else
        format.html { render action: "new" }
        format.json { render json: @vsvm.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @vsvm = Vsvm.find(params[:id])

    respond_to do |format|
      if @vsvm.update_attributes(params[:vsvm])
        format.html { redirect_to @vsvm, notice: 'Msg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vsvm.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @vsvm = Vsvm.find(params[:id])
    @vsvm.destroy

    respond_to do |format|
      format.html { redirect_to vsvms_url }
      format.json { head :no_content }
    end
  end
end
