require 'engineyard-cloud-client'

class EngineyardProvider

  def initialize

  end

  def login(email, password)
    @api = EY::CloudClient.new
    @token = @api.authenticate!(email, password)
  end

  def token_login(token)
    @token = token
    @api = EY::CloudClient.new(token: @token)
    @token
  end


  def import
    return unless @api.present?

    @api.apps.each do |app|
      prj = Project.new
      prj.name = app.name
      prj.user = User.first # fix this!

      prj.save!

      app.environments.each do |eenv|
        env = Environment.new
        env.name = eenv.name
        env.is_production = eenv.name.include?('production')

        prj.environments << env

        env.save!
      end

    end
  end

end