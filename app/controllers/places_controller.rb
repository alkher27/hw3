class PlacesController < ApplicationController
  def index
    #find all places
    @places = Place.all
  end
  
  def create
    #   # start with a new Company
      @places = Place.new
    #   # assign user-entered form data to Company's columns
      @places["name"] = params["places"]["name"]
    #   # save Company row
      @places.save
  
    #   # redirect user
    redirect_to "/places"
    end
  
    def new
      @place = Place.new
      #render view with new Company form  
    end

end
