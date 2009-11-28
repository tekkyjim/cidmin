
Given /^I am logged in as an? (.*) with the email "(.*)"$/ do |role,name|
  Given %{I have signed in with "#{name}/password"}
  user = User.find_by_email(name)
  user.role = role
end

When /^(?:|I )openly go to (.+)$/ do |page_name|
  without_access_control do
    visit path_to(page_name)
  end
end

When /^(?:|I )openly press "([^\"]*)"$/ do |button|
  without_access_control do
    click_button(button)
  end
end