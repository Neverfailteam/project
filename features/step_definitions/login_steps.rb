Given (/^Sign up$/) do 
  visit signup_path
  name = "test"
  email = 'testing@man.net'
  password = 'secretpass'
  fill_in "user_name", :with => name
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  fill_in "user_password_confirmation", :with => password
  click_button "Create my account"
  expect(page).to have_content("Diễn đàn sôi động")
end
Given (/^Log in$/) do 
  visit login_path
  email = 'testing@man.net'
  password = 'secretpass'
  visit login_path
  fill_in "session_email", :with => email
  fill_in "session_password", :with => password
end
When(/^I log in$/) do
  click_button "Log in"
end
Then(/^I should see homepage$/) do
  expect(page).to have_content("Diễn đàn sôi động")
end