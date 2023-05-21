class PlacesController < ApplicationController
  def index
    #find all places
    @places = Places.all
  end
end
