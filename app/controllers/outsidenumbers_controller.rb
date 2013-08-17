class OutsidenumbersController < ApplicationController
  def create
  	@callcenter = Callcenter.find(params[:callcenter_id])
  	@outsidenumber = @callcenter.outsidenumbers.create!(params[:outsidenumber])
  	redirect_to @callcenter
	
  	rescue ActiveRecord::RecordInvalid
  	  if not params[:outsidenumber]["dn"] == ""
	  	  if not params[:outsidenumber]["dn"].match /^\d{3}-\d{3}-\d{4}$/
	  	    flash[:notice] = params[:outsidenumber]["dn"] + ' is not correct format 999-999-9999!'  	  	
	  	  else
	  	    flash[:notice] = params[:outsidenumber]["dn"] + ' has been taken!'
	  	  end
  	  end
      redirect_to @callcenter
    end
end

