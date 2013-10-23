class CreateProjectAuths < ActiveRecord::Migration
  def change
    create_table :project_auths do |t|
      t.references :project
      t.references :user

      t.timestamps
    end
  end
end
