class CommentsController < ApplicationController
  def new
    # @comment = Comment.find_by(id: params['id'])
      @comment = Comment.new
  end

  def show
    @comment = Comment.find_by(id: params['id'])
  end

  def index
    @comments = Comment.all
  end

def create
    @comment = Comment.new(comment_params)
    respond_to do |format|

    if @comment.save
      session[:user_id] = @user.id
      redirect_to user_path( @comment )
      redirect_to blog_path( blog )
    else
      format.html { render 'new'} ## Specify the format in which you are rendering "new" page
      format.json { render json: @comment.errors } ## You might want to specify a json format as well
    end

    end
  end
end

  def destroy
    comment = Comment.find_by(id: params["id"])
    comment.destroy
    redirect_to "/blog"
  end


private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:user_id)
    end
