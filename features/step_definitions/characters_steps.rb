When /^I create a character named "([^\"]*)"$/ do |name|
  fill_in :name, :with => name
  click_button 'Create'
end

