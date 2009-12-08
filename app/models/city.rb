class City < ActiveRecord::Base
  attr_accessible :name
  has_many :characters
  validates_presence_of :name, :on => :create, :message => "can't be blank" 
end
