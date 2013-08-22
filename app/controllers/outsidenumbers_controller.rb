class OutsidenumbersController < ApplicationController
	
  def index
    @outsidenumbers = Outsidenumber.where("callcenter_id = ?", params[:callcenter_id]).order("dn DES")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @outsidenumbers }
    end
  end
  
  def destroy
    @outsidenumber = Outsidenumber.find(params[:id])
    @outsidenumber.destroy

    respond_to do |format|
      format.html { redirect_to outsidenumbers_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end
  
  def create
  	@callcenter = Callcenter.find(params[:callcenter_id])
  	@outsidenumber = @callcenter.outsidenumbers.create!(params[:outsidenumber])
  	respond_to do |format|
      format.html { redirect_to @callcenter }
      format.js
    end
     
    rescue ActiveRecord::RecordInvalid
  	  if not params[:outsidenumber]["dn"] == ""
	  	  if not params[:outsidenumber]["dn"].match /^\d{3}-\d{3}-\d{4}$/
	  	    flash[:notice] = params[:outsidenumber]["dn"] + ' is not correct format 999-999-9999!'  
	  	    format.js { render :js=>'alert("bad format");' }	  	
	  	  else
	  	    flash[:notice] = params[:outsidenumber]["dn"] + ' has been taken!'
	  	    format.js { render :js=>'alert("number taken");' }	
	  	  end
  	   end
       redirect_to @callcenter 
      
    end


end

