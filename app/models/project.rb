class Project < ActiveRecord::Base
  attr_accessible :name, :owner
  has_many :environments, order: 'is_production ASC'
  belongs_to :owner, class_name: 'User', foreign_key: 'owner'
  has_many :project_auths
  has_many :authorized_users, class_name: 'User', through: :project_auths
end
