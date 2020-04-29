require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

#Nokogiri::HTML(html)

doc = Nokogiri::HTML(html)

#doc = Nokogiri::HTML(open("https://flatironschool.com/"))
#doc.css(".headline-26OIBN")
#doc.css(".headline-26OIBN").text
#doc.css(".headline-26OIBN").class

#puts doc.css(".headline-26OIBN")
#doc.css("inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

#puts doc


courses = doc.css("#3c239880-48cf-5ce7-84d0-578546d87586.inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

courses.each do |course|
    puts course.text.strip
end

p doc.css("#3c239880-48cf-5ce7-84d0-578546d87586.inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0].name
