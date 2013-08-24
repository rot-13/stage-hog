class SessionsController < ApplicationController
  def create
    auth_hash = request.env['omniauth.auth']
    user = User.where(unique_id: auth_hash['uid']).first_or_create(
        nickname:     auth_hash['info']['nickname'],
        email:        auth_hash['info']['email'],
        image_url:    auth_hash['info']['image'],
        access_token: auth_hash['credentials']['token']
    )

    self.current_user = user

    redirect_to project_index_path
  end

  def destroy
    current_user = nil
  end
end
