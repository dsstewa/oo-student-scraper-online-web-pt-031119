require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    students = []
    info = doc.css("#instructors .team-holder .person-box")
    binding.pry
    
    students
  end

#doc.css("#instructors .team-holder .person-box")

  def self.scrape_profile_page(profile_url)
    
  end

end


