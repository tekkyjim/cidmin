require File.dirname(__FILE__) + '/../spec_helper'

describe City do
  it "should be valid" do
    City.new.should be_valid
  end
end
