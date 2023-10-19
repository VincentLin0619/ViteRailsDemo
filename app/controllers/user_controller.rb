class UserController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new, status: 422
    end
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit(:nick_name, :email, :password_digest, :role)
  end


end
