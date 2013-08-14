class Envrionment < ActiveRecord::Base
  attr_accessible :in_use_by, :is_production, :name, :project_id
end
