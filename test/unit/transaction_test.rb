require 'test_helper'

class TransactionTest < ActiveSupport::TestCase
  should "be valid with factory" do
    assert_valid Factory.build(:transaction)
  end
end
