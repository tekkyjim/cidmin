require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  should "be valid with factory" do
    assert_valid Factory.build(:character)
  end
end
