require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    students = []
    doc.css("div.student-card").each do |value|
      binding.pry
      student = {}
      student[:name] = value.css("h4.student-name").text
      student[:location] = value.css("p.student-location").text
      student[:profile_url] = value.css("")
      
      
      
     
    end
   
    
    
   # binding.pry
    
    students
  end

#doc.css("#instructors .team-holder .person-box")

  def self.scrape_profile_page(profile_url)
    
  end

end


