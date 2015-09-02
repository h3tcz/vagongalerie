class HomeController < ApplicationController
  layout 'application'

  # new homepage is going to be in here
  def index
    @projects = Project.all
    @static_pages = StaticPage.published
  end
end
