class Project < ActiveRecord::Base
  attr_accessible :name, :owner
  has_many :environments, order: 'is_production ASC'
  belongs_to :owner, class_name: 'User', foreign_key: 'owner'
end
