class LoginController < ApplicationController
  before_action :check_if_logged_out, only: [:new, :create]
  before_action :check_if_logged_in, only: [:edit, :update]

  def index
  end

  def show
    @user = User.find_by(id: params["id"])
  end

  def new
    @user = User.new
  end

  def create
    email = params["email"]
    password = params["password"]

    user = User.find_by(email: email)
    # If the user exists and you provided the right password
    if user.present? && user.authenticate(password)

      session[:user_id] = user.id
      redirect_to "/users"

    else
      flash[:login_error] = "The password or email was incorrect"
      # Show the login form again (potentially with a temporary message)
      render :new # Show the new form
    end
  end

  def edit
  end

  # class SessionController < ApplicationController
  #   def new
  #   end
  #
  #   def destroy
  #     session[:user_id] = nil
  #     redirect_to "/users"
  #   end
  # end

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
