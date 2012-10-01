class Upload < ActiveRecord::Base
  
  validates :upload_file_name, :uniqueness => true, :presence => true
  validates_attachment_presence :upload
  
  has_attached_file :upload, :path => ':rails_root/public/uploads/:filename'

  attr_accessor :permalink  
  # before_post_process :set_content_type
 


  # validates_attachment_content_type :upload, :file_content_type => ['audio/mpeg', 'image/jpeg', 'image/png', 'image/gif', 'application/pdf', 'application/msword', 'text/plain']

  after_post_process :rename_file_name
  
  def rename_file_name
    extension = File.extname(upload_file_name).downcase
    self.upload.instance_write(:file_name, "#{self.permalink}#{extension}")
  end
  
  #def set_content_type
  #  self.file_content_type = upload_file_name.match(/\.([\w+-]+)$/)[0].gsub(".", "").downcase
  #end

end
