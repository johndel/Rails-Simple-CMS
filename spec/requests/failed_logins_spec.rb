require 'spec_helper'


describe "Failed Login" do
  it "Shows error message on empty email and empty password " do
    visit new_user_session_path
    click_button ""
    current_path.should eq(user_session_path)
    page.should have_content("Invalid email or password.")
  end

  it "Shows error message on invalid username and password" do
    visit new_user_session_path
    fill_in "Email", :with => "emaildoesn'texists@example.com"
    fill_in "Password", :with => "wrong password"
    click_button ""
    current_path.should eq(user_session_path)
    page.should have_content("Invalid email or password.")
  end
  
  it "should redirects to login page if user isn't logged in" do
    visit admin_pages_path
    current_path.should eq(user_session_path)
    page.should have_content("You need to sign in before continuing.")
  end
end
