class BlogController < ApplicationController
  def index
  #   # Do I need to speak to the database?
  #   # Do I need to pass any information to the views? (as instance variables)
    @all_blogs = Blog.all
    # irb
  end

  def show
    @blog = Blog.find(params[:id])
  end
end
