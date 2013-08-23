class UserController < ApplicationController
  
  def index
    render json: User.all, only: 'unique_id'
  end
end
