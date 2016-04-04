Given (/^Log in post$/) do 
  visit signup_path
  name = "test"
  email = 'testing@man.net'
  password = 'secretpass'
  fill_in "user_name", :with => name
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  fill_in "user_password_confirmation", :with => password
  click_button "Create my account"
end
When(/^I click newpost$/) do
  expect(page).to have_content("Diễn đàn sôi động")
  visit new_post_path
end
Then(/^I should see newpostpage$/) do
   expect(page).to have_content("Post")
end