class WelcomeController < ApplicationController

  def index

  end

  def new
    @search = Search.new(params[:search])
  end


  def create
    #form creates new search and redirects to search path
    @search = Search.create(params[:search]) #zipcode)
  end



end
