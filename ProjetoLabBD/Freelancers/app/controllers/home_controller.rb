class HomeController < ApplicationController
  def index  	
  	if @current_user != nil
  		@services = @current_user.individual.followeds.services
  		@recent_services=@services.sort {|a,b| a.start_date <=> b.start_date}.reverse
  	else
  		@recent_services=[]
  	end
  end
end