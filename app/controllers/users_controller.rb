class UsersController < ApplicationController
  before_action :check_if_logged_out, only: [:new, :create]
  before_action :check_if_logged_in, only: [:edit, :update]

  def index
  end

  def show
    @users = User.find_by(id: params["id"])
  end

  def new
    @users = User.new
  end

  def create
    @users = User.new( user_params )
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path( @user )
    else
      render :new # Show them the Sign Up form again
    end
  end

  def edit
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
