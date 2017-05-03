class UsersController < ApplicationController
  before_action :check_if_logged_out, only: [:new, :create]
  before_action :check_if_logged_in, only: [:edit, :update]
  def index
  #   # Do I need to speak to the database?
  #   # Do I need to pass any information to the views? (as instance variables)
  #   @all_users = User.all
  end
  #
  def show
  #   @user = User.find_by(id: params['id'])
  end
  #
  def new
  #   @user = User.new
  end
  #
  def create
    render plain: params[:article].inspect
  #   user = User.create( user_strong_params() )
  #   redirect_to "/users/#{user.id}"
  end
  #
  def edit
  #   @user = User.find_by(id: params["id"])
  #     # Prefill values
  #     # Reuse the new form
  end
  #
  def update
  #   # Use the URL to find the right User
  #   user = User.find_by(id: params["id"])
  #   # Enforce a structure of the params, and restrict the values that can be sent.
  #   Add that into the database
  #   user.update( user_strong_params() )
  #   # Make a new GET request to /artists/:id
  #   redirect_to "/users/#{user.id}"
  end
  #
  def destroy
  #   user = User.find_by(id: params["id"])
  #   user.destroy
  #   redirect_to "/users"
  end
  #
  # private
  #   def user_strong_params
  #     params.require(:user_id).permit(:name, :surname, :password, :password_confirmation)
  #   end
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
        redirect_to "/home"
      end
    end
