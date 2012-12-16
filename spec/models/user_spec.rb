require 'spec_helper'

describe User do
  before do
    @user = FactoryGirl.create(:user)
  end

  it "all existing users should have email" do
    @user.email.should_not be_empty
  end

  it "every existing user email should have specific format" do
    @user.email.should =~ /^.+@.+$/
  end

  it "all existing users should have password" do
  	@user.encrypted_password.should_not be_empty
  end

  it "should have normal email addresses" do
    User.new(email: "notniceemail@no", password: "passwordpass").should_not be_valid
    User.new(email: "", password: "passwordpass").should_not be_valid
    User.new(email: "@no.gr", password: "passwordpass").should_not be_valid
    User.new(email: "__-notniceemail@no", password: "passwordpass").should_not be_valid
    User.new(email: "notniceemail@no.com", password: "passwordpass").should be_valid
  end

  it "should not let users without password or with password less than 6 letters to exist" do
    User.new(email: "passemail@pass.gr", password: "").should_not be_valid
    User.new(email: "passemail@pass.gr", password: "passw").should_not be_valid
    User.new(email: "passemail@pass.gr", password: "passwo").should be_valid
  end

end
