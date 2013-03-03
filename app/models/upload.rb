class Upload < ActiveRecord::Base

  validates :upload_file_name, uniqueness: true, presence: true
  validates_attachment_presence :upload

  include ActionView::Helpers::TextHelper # for using 'truncate' method on prettify_permalink
  before_validation :prettify_upload_name

  has_attached_file :upload, path: ":rails_root/public/uploads/:filename", url: "/uploads/:filename"

  attr_accessor :upload_name  # Virtual Attribute
  after_upload_post_process :rename_file_name

private
  def rename_file_name
    extension = File.extname(upload_file_name).downcase
    self.upload.instance_write(:file_name, "#{self.upload_name}#{extension}")
  end

  def prettify_upload_name
    if self.upload_name.nil? || self.upload_name.empty?
      self.upload_name = File.basename(upload_file_name, ".*")
    end
      # parameterize function is nice but not as good as below
      upload_name = truncate(self.upload_name.strip.gsub(/[\~]|[\`]|[\!]|[\@]|[\#]|[\$]|[\%]|[\^]|[\&]|[\*]|[\(]|[\)]|[\+]|[\=]|[\{]|[\[]|[\}]|[\]]|[\|]|[\\]|[\:]|[\;]|[\"]|[\']|[\<]|[\,]|[\>]|[\.]|[\?]|[\/]/,"").gsub(/\s+/,"-").downcase, length: 20, separator: "-", omission: "")
  end

end
