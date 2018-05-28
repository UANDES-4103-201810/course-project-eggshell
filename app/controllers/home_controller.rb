class HomeController < ApplicationController
  def index
    @featured = Project.all.sample(2)
  end
end
