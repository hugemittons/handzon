class UsersController < ApplicationController
  before_action :set_user, only: [:show, :create, :edit, :update, :destroy]

  def show # GET /users/:id
  end

  def new # GET /users/new
    @user = User.new
  end

  def create # POST /users
    @user = User.new(user_params)
    redirect_to user_path(@user)
  end

  def edit # GET /users/:id/edit
  end

  def update # PATCH /users/:id
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy # DELETE /users/:id
    @user.destroy
    redirect_to users_path
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email)
  end
end
