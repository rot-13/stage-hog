class User < ActiveRecord::Base
  attr_accessible :access_token, :unique_id, :nickname, :email, :image_url
  has_many :projects, foreign_key: 'owner', class_name: 'Project'
  has_many :environments_using, foreign_key: 'in_use_by', class_name: 'Environment'
end
