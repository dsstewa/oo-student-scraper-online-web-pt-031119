require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    students = []
    doc.css("div.roster-cards-container").each do |value|
      
      
    end
    #binding.pry
    info.each do |value|
        value.each do |value2|
          binding.pry
        end
        
        #binding.pry
     end
    
    
   # binding.pry
    
    students
  end

#doc.css("#instructors .team-holder .person-box")

  def self.scrape_profile_page(profile_url)
    
  end

end


