module EnvironmentHelper
  def env_status(env)
    if env.is_production
      ''
    else
      text = env.using_user.blank? ? '' : "In use by #{env.using_user.nickname}"
      text += ": '#{env.use_reason}'" if env.using_user.present? and env.use_reason.present?
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
