require 'spec_helper'

feature "Reset Password" do
  scenario "emails instructions to user when requesting password reset" do
    user = create(:user)
    visit new_user_session_path
	click_link "Forgot your password?"
    fill_in "Email", :with => user.email
    click_button ""
    current_path.should eq(new_user_session_path)
    page.should have_content("You will receive an email with instructions about how to reset your password in a few minutes.")
    last_email.body.should include("Someone has requested a link to change your password, and you can do this through the link below.")
    last_email.to.should include(user.email)
  end
end
