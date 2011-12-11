require 'spec_helper'


describe "Successful Login" do
  it "should login and redirects successful to the admin panel" do
    user = create(:user)
    visit new_user_session_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button("")
    current_path.should eq(admin_pages_path)
  end
end
