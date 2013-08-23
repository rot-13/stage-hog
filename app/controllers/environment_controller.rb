class EnvironmentController < ApplicationController
  def index
    @envs = Environment.order(:is_production).all
  end
end
