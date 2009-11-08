class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |table|
      table.integer :user_id
      table.integer :character_id
      table.integer :amount
      table.string :reason, :default => ""
      table.timestamps
    end

  end

  def self.down
    drop_table :transactions
  end
end
