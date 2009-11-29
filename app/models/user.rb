class User < ActiveRecord::Base
  include Clearance::User
  attr_accessible :phonenum, :name, :role, :city_id
  has_many :characters
  has_many :transactions
  belongs_to :city 

  ROLES = %w[admin player]

    def role_symbols
      [role.to_sym]
    end
end