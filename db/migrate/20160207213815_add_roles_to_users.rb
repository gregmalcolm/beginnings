class AddRolesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :roles, :string, limit: 20, array: true, default: ['user']
    add_index  :users, :roles, using: :gin
  end
end
