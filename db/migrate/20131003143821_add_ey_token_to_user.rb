class AddEyTokenToUser < ActiveRecord::Migration
  def change
    add_column :users, :ey_token, :string
  end
end
