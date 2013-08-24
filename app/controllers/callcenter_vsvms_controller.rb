class CallcenterVsvmsController < ApplicationController  
  def index
    @callcenter_vsvms = CallcenterVsvm.where("callcenter_id = ?", params[:callcenter_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @callcenter_vsvms }
    end
  end
  
  def destroy
    @callcenter_vsvm = CallcenterVsvm.find(params[:id])
    @callcenter_vsvm.destroy

    respond_to do |format|
      format.html { redirect_to callcenter_vsvms_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end
  
  def create
  	@callcenter = Callcenter.find(params[:callcenter_id])
  	@callcenter_vsvm = @callcenter.callcenter_vsvms.create!(params[:callcenter_vsvm])
  	respond_to do |format|
      format.html { redirect_to @callcenter }
      format.js
    end
     
    rescue ActiveRecord::RecordInvalid
	   flash[:notice] = Vsvm.where("id = ?",  params[:callcenter_vsvm]["vsvm_id"])[:dn] + ' is taken!' 
	   format.js { render :js=>'alert("Duplicate entry");' }
       redirect_to @callcenter        
    end
end
