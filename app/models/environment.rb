class Environment < ActiveRecord::Base
  attr_accessible :in_use_by, :is_production, :name, :project_id, :use_reason
  belongs_to :project
  belongs_to :using_user, class_name: 'User', foreign_key: 'in_use_by'
end
