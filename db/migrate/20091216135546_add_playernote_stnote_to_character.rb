class AddPlayernoteStnoteToCharacter < ActiveRecord::Migration
  def self.up
    add_column :characters, :playernote, :string
    add_column :characters, :stnote, :string
  end

  def self.down
    remove_column :characters, :stnote
    remove_column :characters, :playernote
  end
end
