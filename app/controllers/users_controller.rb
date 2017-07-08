class UsersController < ApplicationController
  before_action :check_if_logged_out, only:[:new, :create]
  before_action :check_if_logged_in, only: [:edit, :update, :show]
  before_action :check_if_same_user, only: [:show, :edit]

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params["id"])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params())
    if @user.save
      session[:user_id] = @user.id
      redirect_to(root_path())
    else
      render :new
    end
  end




  def edit
  end

  def destroy
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def check_if_logged_out
    if @current_user
      flash[:error] = "You are already logged in"
      redirect_to "/users"
    end
  end

  def check_if_logged_in
    unless @current_user
      flash[:error] = "You need to be logged in for that"
      redirect_to "/login"
    end
  end
end
