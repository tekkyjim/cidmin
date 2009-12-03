class Game < ActiveRecord::Base
  attr_accessible :date, :city_id, :user_id
  has_many :users
  belongs_to :city
end
