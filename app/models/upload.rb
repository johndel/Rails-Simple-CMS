class Upload < ActiveRecord::Base
  attr_accessible :file, :url
  has_attached_file :file
  # validates_attachment_content_type :file, :content_type => ['audio/mpeg', 'image/jpeg', 'image/png', 'image/gif', 'application/pdf', 'application/msword', 'text/plain']

end
