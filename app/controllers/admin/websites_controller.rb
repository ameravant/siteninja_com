class Admin::WebsitesController < AdminController
  def index
    @websites = Website.all
  end
end