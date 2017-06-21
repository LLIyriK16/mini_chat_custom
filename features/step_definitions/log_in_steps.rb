Given /^visit login page$/ do
  visit new_user_session_path
end

When /^fill all area and click log in$/ do
  @user = User.create(email:"login@mail.com", password:"123123", password_confirmation:"123123")
  fill_in 'user[email]', :with => @user.email
  fill_in 'user[password]', :with => @user.password
end

Then /^user success login$/ do
  click_on 'Log in'
  expect(page).to have_content(/Signed/)
end

Then /^user see error$/ do
  click_on 'Log in'
  expect(page).to have_content(/Invalid/)
end