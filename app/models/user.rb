class User < ActiveRecord::Base
  include Clearance::User
  attr_accessible :phonenum, :name, :role_ids
  has_many :characters
  has_many :transactions
  has_many :assignments
  has_many :roles, :through => :assignments

   def role_symbols
     roles.map do |role|
       role.name.underscore.to_sym
     end
   end
end
