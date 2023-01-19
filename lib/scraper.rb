require 'pry'
require 'nokogiri'
require 'open-uri'

class Scraper
  SCRAPE_URL = "https://www.worldometers.info/coronavirus/country/us/"

  def self.scrape_usa
    doc = Nokogiri::HTML(URI.open("https://www.worldometers.info/coronavirus/country/us/"))
    usa_confirmed_cases = doc.css(".maincounter-number")[0].text.gsub(/[\s,]/, "").to_i
    usa_overall_deaths = doc.css(".maincounter-number")[1].text.gsub(/[\s,]/, "").to_i
    usa_recoveries = doc.css(".maincounter-number")[2].text.gsub(/[\s,]/, "").to_i
  end

  def self.scrape_states

  end
end
