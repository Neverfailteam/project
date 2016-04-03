Given (/^Log in$/) do 
  visit logout_path
  visit login_path
  name = "test"
  email = 'testing@man.net'
  password = 'secretpass'
  User.new(:name => name, :email => email, :password => password)
  visit login_path
  fill_in "session_email", :with => email
  fill_in "session_password", :with => password
end
When(/^I log in$/) do
  click_button "Log in"
end

Then(/^I should see homepage$/) do
  visit root_path
end