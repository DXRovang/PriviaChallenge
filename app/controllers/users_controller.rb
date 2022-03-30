class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    find_user()
  end

  def edit
    find_user()
  end

  def update
    find_user()
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    find_user()
    @user.destroy
    redirect_to users_path
  end

  private

  def find_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :city,
      :state,
      :score
    )
  end
end
