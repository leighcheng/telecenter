class CallcenterMsgsController < ApplicationController  
  def index
    @callcenter_msgs = CallcenterMsg.where("callcenter_id = ?", params[:callcenter_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @callcenter_msgs }
    end
  end
  
  def destroy
    @callcenter_msg = Callcenter_msg.find(params[:id])
    @callcenter_msg.destroy

    respond_to do |format|
      format.html { redirect_to callcenter_msgs_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end
  
  def create
  	@callcenter = Callcenter.find(params[:callcenter_id])
  	@callcenter_msg = @callcenter.callcenter_msgs.create!(params[:callcenter_msg])
  	respond_to do |format|
      format.html { redirect_to @callcenter }
      format.js
    end
     
    rescue ActiveRecord::RecordInvalid
  	  if not params[:callcenter_msg]["extension"] == ""
	  	  if not params[:callcenter_msg]["extension"].match /^\d{1,3}-\d{1,2}$/
	  	    flash[:notice] = params[:callcenter_msg]["extension"] + ' is not correct format!'  
	  	    format.js { render :js=>'alert("bad format");' }	  	
	  	  end
  	  end
      redirect_to @callcenter 
      
    end
end
