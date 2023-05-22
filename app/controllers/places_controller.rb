class PlacesController < ApplicationController
  def index
    #find all places
    @places = Place.all
  end
  
  def show
    #   # find a Place
      @place = Place.find_by({ "id" => params["id"] })
      @posts = Post.where({"place_id" => @place["id"]})
    #   # render places/show view with details about Place
    end

    def new
      @place = Place.new
      #render view with new Place form  
    end

  def create
    #   # start with a new Place
      @place = Place.new
    #   # assign user-entered form data to Place's columns
      @place["name"] = params["place"]["name"]
    #   # save Place row
      @place.save
  
    #   # redirect user
    redirect_to "/places"
    end
  
end
