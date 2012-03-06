require 'spec_helper'

describe 'The Welcome Page' do

  it 'allows an unauthenticated user to visit' do
    visit root_path
    find('h1').should have_content 'Welcome to Albums'
  end

  it 'links to the sign up page' do
    visit root_path

    click_link 'Sign up'

    current_path.should == new_user_path
  end
end
