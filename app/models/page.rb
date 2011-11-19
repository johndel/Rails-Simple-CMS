class Page < ActiveRecord::Base
  include ActionView::Helpers::TextHelper # for using truncate method on prettify_permalink
  
  before_save :prettify_permalink
  
  has_many :page_menu_mappings
  has_many :menus, :through => :page_menu_mappings, :uniq => true 
  
  validates :name, :presence => true 
  validates :name, :uniqueness => true 
  validates :name, :length => { :maximum => 250 }
  validates :permalink, :presence => true 
  validates :permalink, :uniqueness => true 
  validates :permalink, :length => { :maximum => 250 }
  validates :title, :length => { :maximum => 250 }
  validates :meta_description, :length => { :maximum => 250 }
  validates :permalink, :length => { :maximum => 250 }

  
  def prettify_permalink
    self.permalink = truncate(self.permalink.strip.gsub(/[\~]|[\`]|[\!]|[\@]|[\#]|[\$]|[\%]|[\^]|[\&]|[\*]|[\(]|[\)]|[\+]|[\=]|[\{]|[\[]|[\}]|[\]]|[\|]|[\\]|[\:]|[\;]|[\"]|[\']|[\<]|[\,]|[\>]|[\.]|[\?]|[\/]/,"").gsub(/\s+/,"-").downcase, length: 50, separator: "-", omission: "")
  end
  
  def self.sitemap
    
  end
    
end
