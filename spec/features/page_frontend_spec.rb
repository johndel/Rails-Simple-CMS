require 'spec_helper'


feature "check the pages that everyone can see" do
  scenario "shows the homepage" do
    visit root_url
    page.should have_content("Hi I am the demo homepage!")
  end

  scenario "shows a page" do
    random_page = create(:page)
    visit "/#{random_page.permalink}"
    page.should have_content("My Main Content")
  end
  
  scenario "a permalink that doesn't exist should render 404" do
    visit "/a-page-that-does-not-exist"
    page.should have_content("Sorry, but the page you were trying to view does not exist.")
  end
end
