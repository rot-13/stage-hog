class User < ActiveRecord::Base
  attr_accessible :access_token, :unique_id
end
