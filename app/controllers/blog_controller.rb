class BlogController < ApplicationController
  def index
    @all_blogs = Blog.all
  end

  def show
    # @all_venues = Venue.all
    @blog = Blog.find(params[:id])
    @comments = @blog.comments.all
    @comment = @blog.comments.build
  end

  def destroy
    blog = Blog.find_by(id: params["id"])
    blog.destroy
    redirect_to "/blog"
  end
end
