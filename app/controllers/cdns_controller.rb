class CdnsController < ApplicationController

  def index
    @cdns = Cdn.where("callcenter_id = ?", params[:callcenter_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cdns }
    end
  end
  
  def destroy
    @cdn = Cdn.find(params[:id])
    @cdn.destroy

    respond_to do |format|
      format.html { redirect_to cdns_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end
  
  def create
  	@callcenter = Callcenter.find(params[:callcenter_id])
  	@cdn = @callcenter.cdns.create!(params[:cdn])
  	respond_to do |format|
      format.html { redirect_to @callcenter }
      format.js
    end
     
    rescue ActiveRecord::RecordInvalid
  	  if not params[:cdn]["extension"] == ""
	  	  if not params[:cdn]["extension"].match /^\d{4}$/
	  	    flash[:notice] = params[:cdn]["extension"] + ' is not correct format 9999!'  
	  	    format.js { render :js=>'alert("bad format");' }	  	
	  	  else
	  	    flash[:notice] = params[:cdn]["extension"] + ' has been taken!'
	  	    format.js { render :js=>'alert("number taken");' }	
	  	  end
  	   end
       redirect_to @callcenter 
      
    end
end
