Given (/^User was logged in$/) do 
  visit signup_path
  fill_in "user_name", :with => "test"
  fill_in "user_email", :with => 'testing@man.net'
  fill_in "user_password", :with => 'secretpass'
  fill_in "user_password_confirmation", :with => 'secretpass'
  click_button "Create my account"
  expect(page).to have_content("Diễn đàn sôi động")
end

When(/^User clicks  'New post' button$/) do
  expect(page).to have_content("Diễn đàn sôi động")
  find_link("New post").click
  expect(page).to have_content("Post")
  title = "test"
  content = "this is content"
  fill_in "post_title", :with => title
  fill_in "post_content", :with => content
  click_button "Post"
end
Then(/^User should see a page with title 'Tilte', content 'Content', button 'Create Post'$/) do
   expect(page).to have_content("Carousel")


end