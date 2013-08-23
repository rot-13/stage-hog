class CreateEnvrionments < ActiveRecord::Migration
  def change
    create_table :environments do |t|
      t.integer :project_id
      t.string :name
      t.boolean :is_production
      t.integer :in_use_by

      t.timestamps
    end
  end
end
