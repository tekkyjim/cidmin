class User < ActiveRecord::Base
  include Clearance::User
  attr_accessible :phonenum, :name
  has_many :characters
  has_many :transactions
end
