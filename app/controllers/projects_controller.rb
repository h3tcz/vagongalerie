class ProjectsController < ApplicationController
  before_filter :find_project, only: :show

  def show
  end

  private

  def find_project
    @project = Project.find_by_slug_cz(params[:id])
  end
end
