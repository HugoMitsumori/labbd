class HomeController < ApplicationController
  skip_before_filter :set_current_user, only: [:index]
  def index  	
  	@recent_services = Service.recent.first(5)
  	end
end