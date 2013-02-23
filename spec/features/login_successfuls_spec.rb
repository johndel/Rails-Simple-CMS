require 'spec_helper'


feature "Successful Login" do
  scenario "should login and redirects successful to the admin panel" do
    admin = create(:admin)
    visit new_admin_session_path
    fill_in "Email", with: admin.email
    fill_in "Password", with: admin.password
    click_button ""
    current_path.should eq(admin_pages_path)
  end
end
