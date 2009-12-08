class Character < ActiveRecord::Base
  validates_presence_of :name
  belongs_to :city
  belongs_to :user
  has_many :transactions
  validates_uniqueness_of :name, :on => :create, :message => "already taken"
end
