class HomeController < ApplicationController
  def index
  end

  def parse
    require 'open-uri'
    require 'nokogiri'
    url = 'http://localhost:3000/'
    data = Nokogiri::HTML(open(url))
    h1_tags = data.css('h1')
    h1_tags.each do |h1|
      TagDatum.create!(tag: 'h1', content: h1.content)
    end
    h2_tags = data.css('h2')
    h2_tags.each do |h2|
      TagDatum.create!(tag: 'h2', content: h2.content)
    end
    h3_tags = data.css('h3')
    h3_tags.each do |h3|
      TagDatum.create!(tag: 'h3', content: h3.content)
    end
  end
end
