class AddNameCityAndXpToCharacter < ActiveRecord::Migration
  def self.up
    add_column :characters, :city_id, :integer
    add_column :characters, :name, :string
    add_column :characters, :xp, :integer

  end

  def self.down
  end
end
