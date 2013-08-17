class OutsidenumbersController < ApplicationController
  def create
  	@callcenter = Callcenter.find(params[:callcenter_id])
  	@outsidenumber = @callcenter.outsidenumbers.create!(params[:outsidenumber])
  	redirect_to @callcenter
  	
  end
end
