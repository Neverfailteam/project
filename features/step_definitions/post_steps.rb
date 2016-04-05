Given (/^Signup Log in post$/) do 
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
When(/^I click newpost$/) do
  expect(page).to have_content("Diễn đàn sôi động")
  find_link("New post").click
  expect(page).to have_content("Post")
  title = "test"
  content = "this is content"
  fill_in "post_title", :with => title
  fill_in "post_content", :with => content
  click_button "Post"
end
Then(/^I should see newpostpage$/) do
   expect(page).to have_content("test")
end