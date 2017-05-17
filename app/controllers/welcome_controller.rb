class WelcomeController < ApplicationController
  def index
    @search = Search.build_search
  end
end
