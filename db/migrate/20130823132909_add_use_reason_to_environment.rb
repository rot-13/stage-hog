class AddUseReasonToEnvironment < ActiveRecord::Migration
  def change
    add_column :environments, :use_reason, :text
  end
end
