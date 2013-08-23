class Project < ActiveRecord::Base
  attr_accessible :name, :owner
  has_many :environments
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
end
