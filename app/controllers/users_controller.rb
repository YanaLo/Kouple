class UsersController < ApplicationController
  # def profile
  #   @users = User.all
  #   @users.find(session[:matcher_id])
  #   session[:matcher_id] = @user
  #   redirect_to ""
  # end
  def home
    @user = User.find(session[:user_id])
    @users = User.all.select{|u| u.relationship_type == @user[:relationship_type]}
    render :show
  end

  def new
    @user= User.new
    @relationship_choice = ["Friendship", "Possibility of Serious", "Marriage", "Hookups", "Be Partners"]
    @choice = ["Male", "Female", "Non-binary"]

  end

  def create
    @user = User.create(user_params)

    # @user.picture?
    session[:user_id] = @user.id
    redirect_to interests_new_path
     # @user = User.new(user_params)
     # session[:user_id] = @user.id
  end

  def edit
    @user = User.find(session[:user_id])
    @relationship_choice = ["Friendship", "Possibility of Serious", "Marriage", "Hookups", "Be Partners"]
    @choice = ["Male", "Female", "Non-binary"]
  end

  def update
    @user = User.find(session[:user_id])
    # byebug
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def show
    @interests = Interest.all
    @user = User.find(params[:id])
    @users = User.all.select{|u| u != current_user && @user.interests == u.interests}
    # redirect_to user_path(@user.id)
  end

def destroy
  @user = User.find(session[:user_id])
  @user.destroy
  flash[:message]= "Account deleted!"
  redirect_to "/login"
end
# u.id != session[:user_id]
  private

  def user_params

    params.require(:user).permit(:full_name, :user_name, :email, :password, :identity, :location, :date_of_birth, :partner, :relationship_type, :photo)

  end
end
