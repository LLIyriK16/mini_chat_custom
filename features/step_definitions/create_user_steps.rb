Given /^click button Sign Up$/ do
  visit new_user_registration_path
  click_on 'Sign up'
end

When /^all parameters present$/ do
  fill_in 'user[email]', :with => 'for@mail.com'
  fill_in 'user[password]', :with => '123123'
  fill_in 'user[password_confirmation]', :with => '123123'
end

Then /^user created$/ do
  expect{click_on 'Sign up'}.to change(User, :count).by(1)
end

Then /^click Sign up for create user count of users must by 0$/ do
  expect{click_on 'Sign up'}.to change(User, :count).by(0)
end