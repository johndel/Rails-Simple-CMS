class Upload < ActiveRecord::Base
  validates :permalink, :uniqueness => true, :presence => true

  has_attached_file :upload,
    :path => ':rails_root/public/uploads/:filename'

  # validates_attachment_content_type :upload, :file_content_type => ['audio/mpeg', 'image/jpeg', 'image/png', 'image/gif', 'application/pdf', 'application/msword', 'text/plain']
  before_post_process :rename_file_name

  def rename_file_name
    extension = File.extname(upload_file_name).gsub(/^\.+/, '')
    filename = upload_file_name.gsub(/\.#{extension}$/, '')
    self.upload.instance_write(:file_name, "#{self.permalink}.#{extension}")
  end

end
