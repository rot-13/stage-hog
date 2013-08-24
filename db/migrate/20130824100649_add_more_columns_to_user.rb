class AddMoreColumnsToUser < ActiveRecord::Migration
  def change
    change_column :users, :unique_id, :integer
    add_column :users, :nickname, :string
    add_column :users, :email, :string
  end
end
