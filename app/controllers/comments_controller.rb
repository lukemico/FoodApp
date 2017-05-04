class CommentsController < ApplicationController
  def new
    # @comment = Comment.find_by(id: params['id'])
      @comment = Comment.new
  end

  def show
    @comment = Comment.find_by(id: params['id'])
  end

  def create
    @comment = Comment.new(id: params['id'])
    @comment.input = params["comment"]["input"]
    @comment.name = @current_user
    @comment.user_id = @current_user
    @comment.blog_id = params["comment"]["blog_id"]
    blog = Blog.find( params["comment"]["blog_id"] )

    if @comment.save
    #   session[:user_id] = @user.id
    #   redirect_to user_path( @comment )
      redirect_to blog_path( blog )
    # else
    #   render :new # Show them the Sign Up form again
    end
  end

  def destroy
    comment = Comment.find_by(id: params["id"])
    comment.destroy
    redirect_to "/blog"
  end
end
