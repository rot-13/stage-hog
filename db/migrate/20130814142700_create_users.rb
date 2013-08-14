class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :unique_id
      t.string :access_token

      t.timestamps
    end
  end
end
