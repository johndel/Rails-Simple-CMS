# encoding: utf-8
require "fileutils" # http://stackoverflow.com/questions/1949771/finding-unused-images-in-a-rails-app

ignore_image = [
  "spec/files/uploads/unique.jpg",
  "public/apple-touch-icon-precomposed.png",
  "public/apple-touch-icon-114x114-precomposed.png",
  "public/apple-touch-icon.png",
  "public/apple-touch-icon-57x57-precomposed.png",
  "public/apple-touch-icon-72x72-precomposed.png"
]


namespace :images do
  desc "USAGE: rake images:unused it shows the unused images of your app"
  task :unused do
    img=Dir.glob("**/*.jpeg")+Dir.glob("**/*.jpg")+Dir.glob("**/*.png")+Dir.glob("**/*.gif")
    data=Dir.glob("**/*.htm*")+Dir.glob("**/*.css*")+Dir.glob("**/*.js*")

    puts img.length.to_s+" images found & "+data.length.to_s+" files found to search against"

    content=""
    data.each do |f|
        content+=File.open(f, 'r').read
    end
    content.encode!('UTF-8', 'UTF-8', invalid: :replace)

    img.each do |m|
      if not ignore_image.include?(m) and not content=~ Regexp.new("\\b"+File.basename(m)+"\\b")
          puts "Image "+m+" not found anywhere in html, css, js, consider adding them in the ignore array."
      end
    end
  end
end