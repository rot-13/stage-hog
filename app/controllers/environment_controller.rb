class EnvironmentController < ApplicationController
  def index
    @envs = Environment.order(:is_production).all
  end

  def use
    @environment = Environment.find(params['id'])
    @environment.using_user = self.current_user
    @environment.save!

    redirect_to project_index_url
  end

  def free
    @environment = Environment.find(params['id'])
    if @environment.using_user.id == self.current_user.id
      @environment.using_user = nil
      @environment.save!
    end

    redirect_to project_index_url
  end
end
