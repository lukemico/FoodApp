class BlogController < ApplicationController
  def index
  #   # Do I need to speak to the database?
  #   # Do I need to pass any information to the views? (as instance variables)
    @all_blogs = Blog.all
    # irb
  end

  def show
    @blog = Blog.find_by(id: params['id'])
  end
  
  # def destroy
  #   blog = Blog.find_by(id: params["id"])
  #   blog.destroy
  #   redirect_to "/blog"
  # end
end
