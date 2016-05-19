Given (/^Sign up$/) do 
  visit signup_path
  fill_in "user_name", :with => "test"
  fill_in "user_email", :with => 'testing@man.net'
  fill_in "user_password", :with => 'secretpass'
  fill_in "user_password_confirmation", :with => 'secretpass'
  click_button "Create my account"
  expect(page).to have_content("Diễn đàn sôi động")
end
Given (/^Log in$/) do 
  visit login_path
  fill_in "session_email", :with => 'testing@man.net'
  fill_in "session_password", :with => 'secretpass'
end

When(/^I log in$/) do
  click_button "Log in"
end

Then(/^I should see homepage$/) do
  expect(page).to have_content("Diễn đàn sôi động")
end
When (/I log out$/) do
  find_link('Log out').click
end
Then (/^The current user is empty$/) do
  expect(page).to have_content("Log in")
end
When (/^I log in with wrong user$/) do
  visit login_path
  fill_in "session_email", :with => 'tesg@man.net'
  fill_in "session_password", :with => 'secretpass'
  click_button "Log in"
end

Then(/^I should see 'Invalid email\/password combination'$/) do
  expect(page).to have_content("Invalid email/password combination")
end

When(/^I log in and I check remember_me$/) do
  check("session_remember_me")
  click_button "Log in"
end