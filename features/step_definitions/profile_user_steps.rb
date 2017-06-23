Given /^login user$/ do
  @user = User.create(email:"profile@mail.com", password:"123123", password_confirmation:"123123")
  visit new_user_session_path
  fill_in 'user[email]', :with => @user.email
  fill_in 'user[password]', :with => @user.password
  click_on 'Log in'
end

When /^user visit profile path$/ do
  visit profile_path(@user)
end

Then /^expect page status 200$/ do
  expect(page.status_code). to eq(200)
end