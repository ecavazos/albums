require 'spec_helper'

describe 'User Sign Up' do

  it 'allows a user to sign up' do
    visit new_user_path

    fill_in 'Email',                 :with => 'mike.hawk@foo.com'
    fill_in 'Password',              :with => '1234'
    fill_in 'Password Confirmation', :with => '1234'

    # submit form and assert user was created successfully
  end
end

