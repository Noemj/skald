require 'rss'
require 'open-uri'

class Poet < ActiveRecord::Base

  def self.generate(url)
    @poet = Poet.create
    open(url) do |rss|
      @poet = parse_feed(RSS::Parser.parse(rss))
    end
    @poet.content
  end

  private

  def self.parse_feed(feed)
    feed.items.each do |item|
      if @poet.content.nil?
        @poet.content = item.title + "\n"
      else 
        @poet.content << item.title + "\n"
      end
    end
    @poet
  end

end
