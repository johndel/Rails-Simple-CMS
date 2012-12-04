require 'spec_helper'

describe Upload do
  it "upload should have name" do
  	create(:upload).upload_file_name.should eq("unique.jpg")
  end 

  it "upload should have a unique name" do
    create(:upload)
    Upload.new(upload_file_name: "unique.jpg", permalink: "test").should_not be_valid
  end

  it "upload should not have an empty name" do
    Upload.new(upload_file_name: "").should_not be_valid
  end

  it "upload name should not be nil" do
  	Upload.new(upload_file_name: nil).should_not be_valid
  end


  it "upload should have permalink" do
  	create(:upload).permalink.should eq("unique")
  end 

  it "upload should not have an empty permalink" do
    Upload.new(permalink: "").should_not be_valid
  end

  it "upload permalink should not be nil" do
  	Upload.new(permalink: nil).should_not be_valid
  end 
  
  it "should change permalinks so they do not contain symbols, spaces, be downcase and it has approximately 20 characters" do
    upload = create(:upload, permalink: "A r34lly str4ng3 permal!nk   w!th $ymb0ls &^% th*t c4n't b3 v4l!d as it !s ")
    upload.permalink.should eq("a-r34lly-str4ng3")
  end

  it "uploads the file in the /uploads/ folder" do
  	create(:upload).upload.url.should eq("/uploads/unique.jpg")
  end
end
