class AddTypeToTransaction < ActiveRecord::Migration
  def self.up
    add_column :transactions, :category, :string, :default => "Other"
  end

  def self.down
    remove_column :transactions, :category
  end
end
