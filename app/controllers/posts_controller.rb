class PostsController < ApplicationController

  def show
    @post = Post.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => @post["company_id"]})
    # render contacts/show view with details about Contact
  end

  def new
    @post = Post.new
    @post["place_id"] = params["place_id"]
    # render contacts/new view with new Contact form
  end

  def create
    # start with a new Contact
    @post = Post.new

    # assign user-entered form data to Contact's columns
    @post["title"] = params["post"]["title"]
    @post["long description"] = params["post"]["long description"]
    @post["date"] = params["post"]["date"]

    # assign relationship between Contact and Company
    @post["place_id"] = params["post"]["place_id"]

    # save Contact row
    @post.save

    # redirect user
    redirect_to "/places/#{@post["place_id"]}"
  end

end
