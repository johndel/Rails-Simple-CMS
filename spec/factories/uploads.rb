# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :upload do
  	upload_file_name "unique.jpg"
  	permalink "unique"
  	upload Rack::Test::UploadedFile.new(Rails.root + 'spec/files/uploads/unique.jpg', 'image/jpg')
  end  
end
