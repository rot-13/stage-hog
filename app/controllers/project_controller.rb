class ProjectController < ApplicationController
  def index
    @projects = current_user.authorized_projects
  end
end
