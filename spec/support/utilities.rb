include ApplicationHelper

def sign_up(user)
  fill_in "Name",       with: "Example User"
  fill_in "Email",      with: "user@example.com"
  fill_in "Password",     with: "foobar"
  fill_in "Confirm Password",   with: "foobar"
end

def sign_in(user)
  visit signin_path
  fill_in "Email",    with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
  # Sign in when not using Capybara as well.
  cookies[:remember_token] = user.remember_token
end

def edit(user)
  fill_in "Name",             with: new_name
  fill_in "Email",            with: new_email
  fill_in "Password",         with: user.password
  fill_in "Confirm Password", with: user.password
  click_button "Save changes"
end


RSpec::Matchers.define :have_error_message do |message|
  match do |page|
  	page.should have_selector('div.alert.alert-error', text: message)
  end
end
