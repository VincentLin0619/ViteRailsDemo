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
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit , flash: {errors: @user.errors}
    end
  end

  def destroy

  end

  private
  def user_params
    params.require(:user).permit(:nick_name, :email, :password, :role)
  end


end
