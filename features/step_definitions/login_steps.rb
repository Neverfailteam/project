Given (/^Log in$/) do 
  visit logout_path
  visit login_path
  name = "test"
  email = 'testing@man.net'
  password = 'secretpass'
  User.new(:name => name, :email => email, :password => password)
  visit login_path
  fill_in "session[email]", :with => email
  fill_in "session[password]", :with => password
  click_button "Log in"
end
When(/^I log in$/) do
end

Then(/^I should see home$/) do
  pending
end