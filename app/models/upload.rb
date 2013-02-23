class Upload < ActiveRecord::Base

  validates :upload_file_name, uniqueness: true, presence: true
  validates_attachment_presence :upload
  validate :check_permalink

  include ActionView::Helpers::TextHelper # for using 'truncate' method on prettify_permalink
  before_validation :prettify_permalink

  has_attached_file :upload, path: ":rails_root/public/uploads/:filename", url: "/uploads/:filename"

  attr_accessor :permalink  # Virtual Attribute
  after_upload_post_process :rename_file_name

private
  def rename_file_name
    extension = File.extname(upload_file_name).downcase
    self.upload.instance_write(:file_name, "#{permalink}#{extension}")
  end

  def check_permalink
    errors.add(:permalink, "can't be blank") if self.permalink.empty?
  end

  def prettify_permalink
    if self.permalink.nil?
      self.permalink = ""
    else
      # parameterize function is nice but not as good as below
      self.permalink = truncate(self.permalink.strip.gsub(/[\~]|[\`]|[\!]|[\@]|[\#]|[\$]|[\%]|[\^]|[\&]|[\*]|[\(]|[\)]|[\+]|[\=]|[\{]|[\[]|[\}]|[\]]|[\|]|[\\]|[\:]|[\;]|[\"]|[\']|[\<]|[\,]|[\>]|[\.]|[\?]|[\/]/,"").gsub(/\s+/,"-").downcase, length: 20, separator: "-", omission: "")
    end
  end

end
