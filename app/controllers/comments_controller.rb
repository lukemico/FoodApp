class CommentsController < ApplicationController
  def new
    @comment = Comment.find_by(id: params['id'])
  end

  def show
    @comment = Comment.find_by(id: params['id'])
  end

  def create
    @comments = Comment.new(id: params['id'])
    if @comment.save
      session[:user_id] = @user.id
      redirect_to user_path( @comment )
    else
      render :new # Show them the Sign Up form again
    end


    def create
      post = Post.new( post_params )
      post.user = @current_user
      post.save
      redirect_to post_path(post)
      # redirect_to "/posts/#{post.id}"
    end





  end

  def update
  end

  def destroy
    comment = Comment.find_by(id: params["id"])
    comment.destroy
    redirect_to "/blog"
  end
end
