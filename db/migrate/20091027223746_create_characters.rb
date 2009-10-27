class CreateCharacters < ActiveRecord::Migration
  def self.up
    create_table :characters do |table|
      table.timestamps
    end

  end

  def self.down
    drop_table :characters
  end
end
