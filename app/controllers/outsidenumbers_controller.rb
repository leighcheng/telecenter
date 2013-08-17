class OutsidenumbersController < ApplicationController
  def create
  	@callcenter = Callcenter.find(params[:callcenter_id])
  	@outsidenumber = @callcenter.outsidenumbers.create!(params[:outsidenumber])
  	redirect_to @callcenter
	
  	rescue ActiveRecord::RecordInvalid
  	  if not params[:outsidenumber]["dn"].empty?
  	    flash[:notice] = params[:outsidenumber]["dn"] + ' has been taken!'
  	  end
      redirect_to @callcenter
    end
end

