require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    students = []
    doc.css("div.roster-cards-container").each do |roster|
        roster.css("div.student-card").each do |names|
           student = {}
           student[:name] = names.css("h4.student-name").text
           student[:location] = names.css("p.student-location").text
           bin
           student[:profile_url] = names.("a").attribute("href")
           binding.pry
      
           end
        end
   
    
    
   # binding.pry
    
    students
  end

  def self.scrape_profile_page(profile_url)
    
  end

end


