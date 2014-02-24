class WelcomeController < ApplicationController
  def index
    @websites = [["http://railsgirls.com", "railsgirls"],
        ["https://en.wikibooks.org/wiki/Ruby_Programming", "Wiki"],
        ["http://guides.rubyonrails.org", "Guides" ]]
  end
end
