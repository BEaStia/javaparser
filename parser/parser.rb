require 'nokogiri'
require 'open-uri'
require 'mongoid'
require 'app/car_maker'
require 'app/car_model'
require 'app/car'
Mongoid.load!("config/mongoid.yml", :development)

def load_makers_from_autoru
  html_doc = Nokogiri::HTML(open("http://auto.ru").read)
  script_content = html_doc.css('#breadcrumbs-data').text
  script_content
end

p load_makers_from_autoru