class Character < ActiveRecord::Base
  validates_presence_of :name
  belongs_to :city
  belongs_to :user
  has_many :transactions
end
