class WebsitesController < ApplicationController
  unloadable

  def show
    if params[:domain]
      website = Website.find_or_create_by_domain(params[:domain])
      website.first_deployed = Time.now if params[:first_deployed]
      website.last_deployed = Time.now
      website.save
      redirect_to("http://" + params[:redirect])
    end    
  end
end