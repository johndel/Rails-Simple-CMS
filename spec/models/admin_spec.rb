require 'spec_helper'

describe Admin do
  before do
    @admin = FactoryGirl.create(:admin)
  end

  it "all existing admins should have email" do
    @admin.email.should_not be_empty
  end

  it "every existing admin email should have specific format" do
    @admin.email.should =~ /^.+@.+$/
  end

  it "all existing admins should have password" do
  	@admin.encrypted_password.should_not be_empty
  end

  it "should have normal email addresses" do
    Admin.new(email: "notniceemail@no", password: "passwordpass").should_not be_valid
    Admin.new(email: "", password: "passwordpass").should_not be_valid
    Admin.new(email: "@no.gr", password: "passwordpass").should_not be_valid
    Admin.new(email: "__-notniceemail@no", password: "passwordpass").should_not be_valid
    Admin.new(email: "notniceemail@no.com", password: "passwordpass").should be_valid
  end

  it "should not let admins without password or with password less than 6 letters to exist" do
    Admin.new(email: "passemail@pass.gr", password: "").should_not be_valid
    Admin.new(email: "passemail@pass.gr", password: "passw").should_not be_valid
    Admin.new(email: "passemail@pass.gr", password: "passwo").should be_valid
  end

end
