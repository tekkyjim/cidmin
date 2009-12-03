class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.datetime :date
      t.integer :city_id
      t.integer :user_id
      t.timestamps
    end
    add_column :users, :game_id, :integer
  end
  
  def self.down
    remove_column :users, :game_id
    drop_table :games
  end
end
