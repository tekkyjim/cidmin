class AddRoleToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :role, :string, :default => "player", :force => true
    add_column :users, :city_id, :integer
  end

  def self.down
    remove_column :users, :role
    remove_column :users, :city_id
  end
end
