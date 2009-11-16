class User < ActiveRecord::Base
  include Clearance::User
   acts_as_authorization_subject
  attr_accessible :phonenum, :name
  has_many :characters
  has_many :transactions
end
