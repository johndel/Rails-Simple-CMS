# encoding: utf-8

require "fileutils" # http://stackoverflow.com/questions/1949771/finding-unused-images-in-a-rails-app

img=Dir.glob("**/*.jpeg")+Dir.glob("**/*.jpg")+Dir.glob("**/*.png")+Dir.glob("**/*.gif")
data=Dir.glob("**/*.htm*")+Dir.glob("**/*.css*")+Dir.glob("**/*.js*")

puts img.length.to_s+" images found & "+data.length.to_s+" files found to search against"

content=""
data.each do |f|
    content+=File.open(f, 'r').read
end
content.encode!('UTF-8', 'UTF-8', :invalid => :replace)
#File.open("text.txt", 'w') { |file| file.write(content) }
img.each do |m|
  if not content=~ Regexp.new("\\b"+File.basename(m)+"\\b")
      puts "Image "+m+" not found anywhere in html, css, js"
  end
end