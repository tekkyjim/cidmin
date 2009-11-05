class AddPhonenumNameToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :phonenum, :string
    add_column :users, :name, :string
  end

  def self.down
    remove_column :users, :Name
    remove_column :users, :Phonenum
  end
end
