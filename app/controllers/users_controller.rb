class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = @user.books
    @bookshow = Book.new
  end


  def index
    @users = User.all
    @bookindex = Book.new
  end
  
  def edit
    @user = User.find(params[:id])
    if @user.id != current_user.id
      redirect_to user_path(current_user)
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    redirect_to user_path(@user.id), notice: "You have updated user successfully."
    else
      render :edit
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
