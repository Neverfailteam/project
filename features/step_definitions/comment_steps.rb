Given (/^Signup$/) do 
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
Given (/^Login$/) do 
  visit login_path
  email = 'testing@man.net'
  password = 'secretpass'
  visit login_path
  fill_in "session_email", :with => email
  fill_in "session_password", :with => password
  click_button "Log in"
end

When(/^I comment$/) do
  find_link("New post").click
  title = "test"
  content = "this is content"
  fill_in "post_title", :with => title
  fill_in "post_content", :with => content
  click_button "Post"
  visit root_path
  click_link "test"
  comment = "test code"
  fill_in "comment_comment", :with => comment
  click_button "Create Comment"
end

Then(/^I should see my comment$/) do
  expect(page).to have_content("test code")
end