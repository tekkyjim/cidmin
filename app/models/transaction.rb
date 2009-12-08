class Transaction < ActiveRecord::Base
  belongs_to :user
  belongs_to :character
  validates_presence_of :reason, :on => :create, :message => "Must Provide A Reason"
  validates_presence_of :amount, :on => :create, :message => "Cannot Be Blank"
  
end
