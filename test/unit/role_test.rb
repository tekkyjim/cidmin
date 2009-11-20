require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  should "be valid with factory" do
    assert_valid Factory.build(:role)
  end
end
