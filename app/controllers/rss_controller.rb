class RssController < ApplicationController
  def index
    @poets = Poet.generate("http://www.hs.fi/uutiset/rss/")
  end
end
