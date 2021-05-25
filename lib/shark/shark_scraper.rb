#url = https://oceana.org/marine-life/sharks-rays
#shark and ray index page = <section class="block-callout-action-contain inner-contain flex-contain-wrap">
#link to profile page = <div class="overlay"> <a href>

require 'open-uri'
require 'nokogiri'
require 'pry'

class Shark::Scraper
    attr_accessor :sharks

    @@all = []

    def get_page
        Nokogiri::HTML(open('https://oceana.org/marine-life/sharks-rays'))
    end 

    def scrape_shark_encyclopedia
      self.get_page.css("section.block-callout-action-contain article")
    end 

    def make_sharks
      scrape_shark_encyclopedia.each do |shark|
        Shark::SharkRays.new_from_shark_index(shark)
      end 
    end 
  end 

   

