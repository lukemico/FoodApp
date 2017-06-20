class BlogController < ApplicationController
  def index
    @all_blogs = Blog.all
  end

  def show
    # @all_venues = Venue.all
    @blog = Blog.find(params[:id])
    @comment = Comment.new
    @comment.blog_id = params["id"]
    # irb
  end

  def destroy
    blog = Blog.find_by(id: params["id"])
    blog.destroy
    redirect_to "/blog"
  end
end
