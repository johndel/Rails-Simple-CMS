require 'spec_helper'

shared_context "user stuff" do
  before do
    @users = User.all
  end
end


describe User do
  include_context "user stuff"

  it "database should have at least one user" do
  	@users.should have_at_least(1).user
  end

  it "all existing users should have email" do
  	@users.each do |user|
  	  user.email.should_not be_empty
  	end
  end

  it "every existing user email should have specific format" do
  	@users.each do |user|
  	  user.email.should =~ /^.+@.+$/
  	end	
  end	

  it "all existing users should have password" do
  	@users.each do |user|
  	  user.encrypted_password.should_not be_empty
  	end
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
