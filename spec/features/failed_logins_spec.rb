require 'spec_helper'


feature "Failed Login" do
  scenario "Shows error message on empty email and empty password " do
    visit new_admin_session_path
    click_button ""
    current_path.should eq(admin_session_path)
    page.should have_content("Invalid email or password.")
  end

  scenario "Shows error message on invalid username and password" do
    visit new_admin_session_path
    fill_in "Email", :with => "emaildoesntexists@example.com"
    fill_in "Password", :with => "wrong password"
    click_button ""
    current_path.should eq(admin_session_path)
    page.should have_content("Invalid email or password.")
  end

  scenario "should redirects to sign in page if user isn't logged in" do
    visit admin_pages_path
    current_path.should eq(admin_session_path)
    page.should have_content("You need to sign in before continuing.")
  end
end
