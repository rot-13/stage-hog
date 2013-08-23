module EnvironmentHelper
  def env_status(env)
    if env.is_production
      ''
    else
      env.using_user.blank? ? '' : "In use by #{env.using_user.unique_id}"
    end
  end

  def env_status_type(env)
    if env.is_production
      :production
    else
      env.using_user.blank? ? :free : :in_use
    end
  end

end
