require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    students = []
    doc.css("div.roster-cards-container").each do |roster|
        roster.css("div.student-card a").each do |names|
           student = {}
           student[:name] = names.css("h4.student-name").text
           student[:location] = names.css("p.student-location").text
           student[:profile_url] = names.attr("href")
           students << student
           end
        end
    students
  end

  def self.scrape_profile_page(profile_url)
    html = open(profile_url)
    doc = Nokogiri::HTML(html)
    student_info = []
    #binding.pry
    doc.css("div.vitals-container").each do |containers|
        containers.css("div.social-icon-container").each do |social|
           binding.pry
           student = {}
           student[:name] = names.css("h4.student-name").text
           student[:location] = names.css("p.student-location").text
           student[:profile_url] = names.attr("href")
           students << student
           end
        end
    students
    
    
    
    
  end

end


