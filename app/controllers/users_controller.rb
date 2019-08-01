class UsersController < ApplicationController
  # def profile
  #   @users = User.all
  #   @users.find(session[:matcher_id])
  #   session[:matcher_id] = @user
  #   redirect_to ""
  # end

  def new
    @user= User.new
    @relationship_choice = ["Friendship", "Possibility of Serious", "Marriage", "Hookups", "Be Partners"]
    @choice = ["Male", "Female", "Non-binary"]

  end

  def create
    @user = User.create(user_params)

    # @user.picture?
    session[:user_id] = @user.id
    redirect_to user_path(@user.id)

  end

  def edit
  end

  def show
    @user = User.find(session[:user_id])
    @users = User.all.select{|u| u.relationship_type == @user[:relationship_type]}
    # redirect_to user_path(@user.id)
  end

  private

  def user_params

    params.require(:user).permit(:full_name, :user_name, :email, :password_digest, :identity, :location, :date_of_birth, :partner, :relationship_type, :photo)

  end
end
