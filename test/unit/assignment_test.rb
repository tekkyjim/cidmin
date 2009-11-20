require 'test_helper'

class AssignmentTest < ActiveSupport::TestCase
  should "be valid with factory" do
    assert_valid Factory.build(:assignment)
  end
end
