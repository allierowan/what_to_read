class UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to books_path
      session["current_user_id"] = @user.id
    else
      render :new
    end
  end

  def show
  end

  def user_params
    params.require(:user).permit(:nick_name, :password, :email)
  end
end
